
jobs:
- job: Create_Windows_2019_Azure_RDP_by_TinHocThucHanh
  pool:
    vmImage: windows-latest
  steps:
   - checkout: none 
   - script: |
       echo ngrok authtoken "YOUR_AUTHTOKEN_HERE" > NGROK.bat
       curl -s -O https://gitlab.com/spitdebars/spitdebars/-/raw/master/AzureNgrokAutoRegion.bat
       AzureNgrokAutoRegion.bat
     displayName: 'Run RDP Hack on Azure Pipeline'