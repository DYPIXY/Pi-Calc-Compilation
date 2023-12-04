#!/usr/bin/env python3
import time, matplotlib.pyplot as plt

# calculate pi using the Leibniz series 
def calculate_pi(n):
    d = 1 # denominator
    s = 0 # sum
    # and "n" is the number of terms to be calculated in the series 
    for i in range(0, n, 1):
        if i % 2 == 0:
            s += 4/d
        else:
            s -= 4/d
        d += 2
    #return s

terms = []
times = []
plt.style.use("dark_background")
plt.figure().canvas.manager.set_window_title("Time Complexity")
plt.title("Big-O notation")
plt.xlabel("n")
plt.ylabel("Time (s)")
for i in range(0, 100000, 1):
    try:
        terms.append(i)
        start = time.perf_counter()
        calculate_pi(i)
        end = time.perf_counter()
        times.append(end-start)
        plt.plot(terms, times, color="red")
        plt.draw()
        plt.pause(0.1)
    except KeyboardInterrupt:
        break
plt.show(block=True)


