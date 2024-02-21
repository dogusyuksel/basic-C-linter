# basic-C-linter

## intro

This program is used for checking your C applications against memory leaks,

It checks the below allocation functions and seeks deallocating it before returning from the function;
* open()               - close()
* fopen()              - fclose()
* calloc()             - free()
* malloc()             - free()
* pthread_mutex_lock() - pthread_mutex_unlock()

## how to compile

just type **make**

## how to use

* use "-h" option to see help
```
./analyzer -h
```

* use "-d" option to give a directory
```
./analyzer -d <path-to-the-directory>
```

* use "-f" option to give a file
```
./analyzer -f <path-to-the-file>
```

* use "-s" option to ignore the error
    * Pleae note that, you need to type <any-specific-string-as-comment> as comment at the same line by using "//" in the problematic line.
```
./analyzer -s <any-specific-string-as-comment> -d <path-to-the-directory>
```

## example output

```
  ==> Be careful about ../extended-grep/cjson.c:166 function. Possible ->malloc(<- leak (1)
  ==> Be careful about ../extended-grep/main.c:534 function. Possible ->open(<- leak (2)
  ==> Be careful about ../extended-grep/main.c:362 function. Possible ->calloc(<- leak (1)
  ==> Be careful about ../extended-grep/main.c:188 function. Possible ->calloc(<- leak (1)
  ==> Be careful about ../linux-c-practice/thread_mutex.c:46 function. Possible ->malloc(<- leak (2)
  ==> Be careful about ../linux-c-practice/binarysearchtree.c:92 function. Possible ->malloc(<- leak (1)
  ==> Be careful about ../linux-c-practice/ipc_msgqueue.c:32 function. Possible ->open(<- leak (1)
  ==> Be careful about ../linux-c-practice/fork-pipe-exec.c:127 function. Possible ->calloc(<- leak (4)
  ==> Be careful about ../linux-c-practice/tailq.c:28 function. Possible ->malloc(<- leak (2)
  ==> Be careful about ../linux-c-practice/sigaction.c:248 function. Possible ->malloc(<- leak (1)
  ==> Be careful about ../BasicStaticCodeAnalysis/analyzer.c:99 function. Possible ->malloc(<- leak (2)
  ==> Be careful about ../simple_c_analyzer/src/analyzer.c:37 function. Possible ->malloc(<- leak (2)
  ==> Be careful about ../secure-password/main.c:653 function. Possible ->open(<- leak (3)
  ==> Be careful about ../secure-password/main.c:487 function. Possible ->calloc(<- leak (1)
  ==> Be careful about ../secure-password/main.c:419 function. Possible ->calloc(<- leak (1)
  ==> Be careful about ../secure-password/main.c:298 function. Possible ->open(<- leak (2)
  ==> Be careful about ../secure-password/main.c:236 function. Possible ->open(<- leak (2)
  ==> Be careful about ../secure-password/main.c:236 function. Possible ->calloc(<- leak (1)
  ==> Be careful about ../secure-password/main.c:218 function. Possible ->open(<- leak (1)
  ==> Be careful about ../secure-password/main.c:200 function. Possible ->open(<- leak (2)
  ==> Be careful about ../QuickEngineeringNotes/glibc-bestptactices/thread_mutex.c:46 function. Possible ->malloc(<- leak (2)
  ==> Be careful about ../QuickEngineeringNotes/glibc-bestptactices/binarysearchtree.c:92 function. Possible ->malloc(<- leak (1)
  ==> Be careful about ../QuickEngineeringNotes/glibc-bestptactices/ipc_msgqueue.c:32 function. Possible ->open(<- leak (1)
  ==> Be careful about ../QuickEngineeringNotes/glibc-bestptactices/tailq.c:28 function. Possible ->malloc(<- leak (2)
  ==> Be careful about ../QuickEngineeringNotes/glibc-bestptactices/sigaction.c:179 function. Possible ->malloc(<- leak (1)

SUMMARY:
        Total Checked Files     :  137
        Total Checked Functions :  620
        Total Possible Leaks    :  25
```

## license

This is completely **FREE**
