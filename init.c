// init: The initial user-level program

#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

char *argv[] = { "sh", 0 };

// int
// main(void)
// {
//   int pid, wpid;

//   if(open("console", O_RDWR) < 0){
//     mknod("console", 1, 1);
//     open("console", O_RDWR);
//   }
//   dup(0);  // stdout
//   dup(0);  // stderr

//   for(;;){
//     printf(1, "init: starting sh\n");
//     pid = fork();
//     if(pid < 0){
//       printf(1, "init: fork failed\n");
//       exit();
//     }
//     if(pid == 0){
//       exec("sh", argv);
//       printf(1, "init: exec sh failed\n");
//       exit();
//     }
//     while((wpid=wait()) >= 0 && wpid != pid)
//       printf(1, "zombie!\n");
//   }
// }


// int main(void) {
//   printf(1, "Creating processes with different priorities...\n");
  
//   if (fork() == 0) {  // Child process
//       chpr(getpid(), 20);  // Higher priority (runs more)
//       while(1);
//   }

//   if (fork() == 0) {  // Another child process
//       chpr(getpid(), 5);   // Lower priority (runs less)
//       while(1);
//   }

//   while(1); // Parent keeps running
//   return 0;
// }

// init: The initial user-level program

int
main(void)
{
  // --- Setup console as original init does ---
  if(open("console", O_RDWR) < 0){
    mknod("console", 1, 1);
    open("console", O_RDWR);
  }
  // Duplicate descriptors for stdout and stderr
  dup(0);
  dup(0);

  // --- Your added code to create processes with different priorities ---
  printf(1, "INIT.C STARTED!\n");
  printf(1, "Starting high and low priority processes...\n");

  int i;
  int pidHigh = fork();
  if(pidHigh < 0){
    printf(1, "ERROR: fork() for high-priority child failed\n");
  } else if(pidHigh == 0) {
    // High-priority child
    printf(1, "High-priority process created! PID=%d\n", getpid());
    chpr(getpid(), 20);  // "Higher priority" if your scheduler picks larger numbers first
    for(i = 0;; i++){
      if(i % 10000000 == 0) {
        printf(1, "[HIGH  PID=%d] i=%d\n", getpid(), i);
      }
    }
    exit();
  }

  int pidLow = fork();
  if(pidLow < 0){
    printf(1, "ERROR: fork() for low-priority child failed\n");
  } else if(pidLow == 0) {
    // Low-priority child
    printf(1, "Low-priority process created! PID=%d\n", getpid());
    chpr(getpid(), 5);   // "Lower priority"
    for(i = 0;; i++){
      if(i % 10000000 == 0) {
        printf(1, "[LOW   PID=%d] i=%d\n", getpid(), i);
      }
    }
    exit();
  }

  printf(1, "Parent process created both children. Now launching shell.\n");

  // --- Original infinite loop to launch the shell repeatedly ---
  for(;;){
    printf(1, "init: starting sh\n");
    int pid = fork();
    if(pid < 0){
      printf(1, "init: fork failed\n");
      exit();
    }
    if(pid == 0){
      exec("sh", argv);
      printf(1, "init: exec sh failed\n");
      exit();
    }

    // Wait for shell to exit; if it does, loop again and re-launch
    int wpid;
    while((wpid=wait()) >= 0 && wpid != pid){
      printf(1, "zombie!\n");
    }
  }
}


