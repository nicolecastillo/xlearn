## Using Popper

[Popper](https://github.com/systemslab/popper) is a tool for defining and executing container-native workflows in Docker, as well as other container engines. This workflow contains a `wf.yml` file that defines a Popper workflow for automatically downloading and verifying data, running the benchmark and generating a report. The steps of the workflow are using the complete [HIGGS data set](https://archive.ics.uci.edu/ml/datasets/HIGGS) from UCI. More details about Popper can be found [here](https://popper.readthedocs.io/).


### Instructions:

1. Clone the repository.
```
git clone https://github.com/aksnzhy/xlearn.git
```

2. Install docker.

3. Install the `popper` tool.
```
curl -sSfL https://raw.githubusercontent.com/getpopper/popper/master/install.sh | sh
```
We recommend to use a [virtualenv](https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/#creating-a-virtual-environment) for installing Popper.

4. Run the workflow.
```
cd xlearn/demo/classification/higgs/popper
popper run -f wf.yml 
```
