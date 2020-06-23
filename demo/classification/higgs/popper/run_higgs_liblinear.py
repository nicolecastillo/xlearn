from liblinearutil import *

# Read data in LIBSVM format
y, x = svm_read_problem('HIGGSlibsvm')
m = train(y[:8800000], x[:8800000], '-C')
p_label, p_acc, p_val = predict(y[8800000:], x[8800000:], m) 
