# Dependency Scanning
**Please Refer to branch specific to each language**  
<br/><br/>
The dependency check pipeline consists of three tasks
### 1. Setup environment  
Setup enviroment task installs all the dependencies used by the project/ mention in the manifest file in the `dependency-directory`
### 2. CRDA  
CRDA task scans the packages from the `dependency-directory` containing dependencies downloaded from manifest file for building the dependency tree and generating the vulnerability report.  
To use CRDA one needs to authenticate first. Read about Secret creation [here](#Secrets)  
`CRDA analyse` report in json is stored in `report-file-path.json` which is used in `Check Vulnerabilities` task to check if vulnerabilities are within the limits or not. 
`report-file-path.json` also stores `exit code` from `crda analyse manifest-file-path -j` to check if the there was no error and report was generated.  
### 3. Check Vulnerabilities
Check Vulnerabilites reads the values of different vulnerabilites from `report-file-path.json` and checks if they're in limit or not.  
  <br/><br/>
You can read more about the working of dependency check/scanning pipeline [here](https://docs.google.com/document/d/1-JuzNR9dJMXXo-cJeC4FAuSLAhxXnwCBYm2zNGJ30Lw/edit?usp=sharing)  
You can read about `CRDA CLI` tool [here](https://github.com/fabric8-analytics/cli-tools/blob/main/docs/cli_README.md)  
  
 ## Secrets
 Create secrets required to authenticated using below commands.  
 
 ```bash
 kubectl create secret crda crda-key=<your crda-key>
 ```  
 
 ```bash
 kubectl create secret token auth-token=<your auth-token>
 ``` 
 

