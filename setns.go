package main

/*
#include <sys/wait.h>

#include <sys/utsname.h>

#include <sched.h>

#include <string.h>

#include <stdio.h>

#include <stdlib.h>

#include <unistd.h>

void setns_wrapper(int fd,int nstype){
	setns(fd,nstype);
}
*/
import "C"

func setns(fd,nstype int){
	C.setns_wrapper(C.int(fd),C.int(nstype))
}