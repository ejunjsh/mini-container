package main

/*
 int setns(int fd, int nstype);
*/
import "C"

func setns(fd,nstype int){
	C.setns(C.int(fd),C.int(nstype))
}