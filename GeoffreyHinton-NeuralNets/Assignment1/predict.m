function predictions = predict(W1,W2, X)

Z1 = 1./(1+exp(-X*W1)) # k x m

predictions = zeros(size(X,1),1)
for i = 1:size(X,1)
  predictions(i) = Z1(i,:)*W2
end

endfunction
