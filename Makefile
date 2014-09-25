#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = 
CFLAGS = -Wall
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = 

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -g
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = bin/Debug/Chinese2Pinyin

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O2
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = bin/Release/Chinese2Pinyin

OBJ_DEBUG = $(OBJDIR_DEBUG)/functions.o $(OBJDIR_DEBUG)/main.o $(OBJDIR_DEBUG)/sds.o $(OBJDIR_DEBUG)/zmalloc.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/functions.o $(OBJDIR_RELEASE)/main.o $(OBJDIR_RELEASE)/sds.o $(OBJDIR_RELEASE)/zmalloc.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG) || mkdir -p $(OBJDIR_DEBUG)

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/functions.o: functions.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c functions.c -o $(OBJDIR_DEBUG)/functions.o

$(OBJDIR_DEBUG)/main.o: main.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c main.c -o $(OBJDIR_DEBUG)/main.o

$(OBJDIR_DEBUG)/sds.o: sds.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c sds.c -o $(OBJDIR_DEBUG)/sds.o

$(OBJDIR_DEBUG)/zmalloc.o: zmalloc.c
	$(CC) $(CFLAGS_DEBUG) $(INC_DEBUG) -c zmalloc.c -o $(OBJDIR_DEBUG)/zmalloc.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)

before_release: 
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/functions.o: functions.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c functions.c -o $(OBJDIR_RELEASE)/functions.o

$(OBJDIR_RELEASE)/main.o: main.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c main.c -o $(OBJDIR_RELEASE)/main.o

$(OBJDIR_RELEASE)/sds.o: sds.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c sds.c -o $(OBJDIR_RELEASE)/sds.o

$(OBJDIR_RELEASE)/zmalloc.o: zmalloc.c
	$(CC) $(CFLAGS_RELEASE) $(INC_RELEASE) -c zmalloc.c -o $(OBJDIR_RELEASE)/zmalloc.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

