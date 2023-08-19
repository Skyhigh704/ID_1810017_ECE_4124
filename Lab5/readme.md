# Experiment Date: 22/05/23
# Experiment No: 05
## Table of Contents
| Section | Description                   |
| ------- | ----------------------------- |
| 1       | Introduction                  |
| 2       | Causal Systems                |
| 3       | Noncausal Systems             |
| 4       | Anticausal Systems            |
| 5       | Inverse Z transform           |
| 6       | Results and Analysis          |
| 7       | Conclusion                    |
# Experiment Name: Causal, Noncausal, and Anticausal Systems

# Report: Z-Transform of Causal, Noncausal, and Anticausal Signals using MATLAB

## Introduction
The Z-transform is a powerful tool used in signal processing to analyze discrete-time signals and systems. In this report, we will explore the Z-transform of causal, noncausal, and anticausal signals. MATLAB will be used to demonstrate the calculations and visualize the results.

## 1. Causal Signal
A causal signal is one that starts at a finite time and remains zero for all negative time indices. Let's consider a causal signal defined as:

\[ x[n] = \{1, 2, 3, 4\} \quad \text{for} \quad n \geq 0 \]

### MATLAB Code for Causal Signal
```matlab
clc;
clear all;
% Define the causal signal
x=input('array: ');b=0;
y=sym('z');
n=length(x);
% Compute and plot the Z-transform
for i=1:n
   b=b+x(i)*y^(1-i);     
end
z=[];
p=[0]
zplane(z,p)
grid
title('Z-plane for Causal Signal');
```
### Ploting Z-transform of Causal System.
![Causal System](output/causal.png)
### Results and Analysis
By applying the Z-transform to the causal signal, we obtain its corresponding representation in the Z-domain. The resulting Z-plane plot shows the location of the poles and zeros of the signal. Analyzing the plot can provide insights into the stability and frequency response of the signal.

## 2. Noncausal Signal
A noncausal signal is one that extends to infinity in both the positive and negative time directions. Let's consider a noncausal signal defined as:

\[ x[n] = \{0, 1, 2, 3, 4\} \quad \text{for} \quad -\infty < n < \infty \]

### MATLAB Code for Noncausal Signal
```matlab
% Define the noncausal signal
clc;
clear all;
x=input('array: ');b=0;
y=sym('z');
n=length(x);
m=input('index:')
% Compute and plot the Z-transform
for i=1:n
   b=b+x(i)*y^(m-i);     
end
z=[];
p=[0]
zplane(z,p)
grid
title('Z-plane for Noncausal Signal');
```
### Ploting Z-transform of Non-Causal System.
![Causal System](output/noncausal.png)
### Results and Analysis
When applying the Z-transform to a noncausal signal, we observe its representation in the Z-domain. The Z-plane plot displays the distribution of poles and zeros, which can provide insights into the system's behavior.

## 3. Anticausal Signal
An anticausal signal is one that starts at negative infinity and remains zero for all nonnegative time indices. Let's consider an anticausal signal defined as:

\[ x[n] = \{4, 3, 2, 1\} \quad \text{for} \quad n \leq 0 \]

### MATLAB Code for Anticausal Signal
```matlab
% Define the anticausal signal
clc;
clear all;
x=input('array: ');b=0;
y=sym('z');
n=length(x);
% Compute and plot the Z-transform
for i=1:n
   b=b+x(i)*y^(-(i-n));   
end
z=[];
p=[]
zplane(z,p)
grid
```
### Ploting Z-transform of anti-Causal System.
![Causal System](output/anticausal.png)
### Results and Analysis
By applying the Z-transform to an anticausal signal, we can observe its representation in the Z-domain. The Z-plane plot provides information about the poles and zeros, aiding in the analysis of system properties.
## 4.Inverse Z-Transform
The inverse Z-transform of a function F(z) is denoted as f[n] and represents the corresponding time-domain sequence. It can be computed using techniques such as partial fraction expansion, power series expansion, or contour integration.
### MATLAB Code
```matlab
clc;
clear all;
y=sym('z');syms n;
%f=exp(-2*n);
f=2^-n;
F=ztrans(f)
t=iztrans(F);
t=simplify(t);
disp(t);z=[0];
b = [1];
a = [1 -1/2];
[b,a] = eqtflength(b,a);
[z,p,k] = tf2zp(b,a)
zplane(b,a)
text(real(z)+0.1,imag(z),"Zero")
text(real(p)+0.1,imag(p),"Pole")
```
### Plotting of Inverse z-transform of a system
![Causal System](output/inverse.png)
###  Results and Analysis
The MATLAB code above demonstrates the computation of the inverse Z-transform for a rational function F(z). The `residue` function is used to compute the residues and poles of the function, which are then used to obtain the time-domain sequence f[n] up to n = 10.

The results of the inverse Z-transform are displayed in a table, showing the values of n and f[n]. The specific values will depend on the function and the desired range of n.

## Conclusion
In this report, we explored the Z-transform of causal, noncausal, and anticausal signals using MATLAB. By analyzing the resulting Z-plane plots, we gained insights into the characteristics and behavior of the signals in the Z-domain. The Z-transform is a valuable tool for understanding discrete-time signals and systems and is widely used
