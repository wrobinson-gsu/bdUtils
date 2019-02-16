from pyspark.sql.dataframe import DataFrame

#####################################################################
# DataFrame transformations monkey patches
# See https://medium.com/@mrpowers/chaining-custom-pyspark-transformations-4f38a8c7ae55
#####################################################################

def transform(self, f):
    return f(self)
DataFrame.transform = transform

# Same as transform above, but the return is not a DataFrame
def apply(self, f):
    return f(self)
DataFrame.apply = apply
