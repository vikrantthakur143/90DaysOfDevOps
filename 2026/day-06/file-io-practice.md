```bash
touch notes.txt
```


```bash
echo "Line 1" > notes.txt
```


```bash
echo "Line 2" >> notes.txt
```


```bash
echo "Line 3" | tee -a notes.txt
```


```bash
cat notes.txt
Line 1
Line 2
Line 3
```


```bash
head -n 2 notes.txt
Line 1
Line 2
```

