```
./run
```

# Note
You can comment out case studies if you don't want to do lengthy experiments.
```
V=1.0.4 P=dotnet/corefx measure "*.cs"
V=3.1.0 P=AFNetworking/AFNetworking measure "*.[hm]"
V=1.2.9 P=ReactiveX/RxJava measure "*.java"
V=1.0.1 P=tensorflow/tensorflow measure "*.h" "*.cc"
V=4.11-rc3 P=torvalds/linux measure "*.h" "*.c"
V=1.0.gf P=openssl/openssl measure "*.h" "*.c"
```
