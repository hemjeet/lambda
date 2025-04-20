import sys
import pandas as pd
import pickle
import seaborn as sns

def handler(event, context):
    return 'Hello from AWS Lambda using Python and hemjeet (Auto update lambda(CI/CD (code deploy)))' + sys.version + '!'