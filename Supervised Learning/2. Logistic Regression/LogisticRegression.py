from sklearn.datasets import load_iris
from sklearn.linear_model import LogisticRegression
X, y = load_iris(return_X_y=True)
clf = LogisticRegression(random_state=0, solver='lbfgs', multi_class='multinomial').fit(X, y)
clf = LogisticRegressionCV(cv=5, random_state=0,multi_class='multinomial').fit(X, y)
clf = linear_model.SGDClassifier(max_iter=1000, tol=1e-3)


clf.predict(X[:2, :])