# TAC Project V2
TAC is a project created by John, it is a project to demonstrate the simplest way of minting and burning, this time, it was modified to include the functions to demonstrate the function require, assert and revert.

## Description
TAC Project V2 is an improvised project from TAC Project which is a simple contract to demonstrate the simplicity of burning and minting tokens.

## Setting Up Remix
To start the program, use Remix https://remix.ethereum.org, an powerful Etherium IDE to run the program

Once you're inside the remix, download the only remaining .sol file and import into your workspace in remix

Make sure you're using an compiler version 0.8.13 by going to the left side navigation panel and select the solidity compiler ![image](https://github.com/brad12345678901/TAC-Solidity/assets/90821323/f162525b-5b36-4c18-9124-8cfe4b685d35)

Inside, click the bar under "Compiler", select the appropriate compiler version
## Running the Program
Now you're set, verify if the file exist in your workspace, if not, you can import it by selecting the icon ![image](https://github.com/brad12345678901/TAC-Solidity/assets/90821323/d3d418dd-7454-4917-8de6-ad1f1321344c)  and navigate where the file is located inside
your disk. After uploading, click the file in your workspace.

Go to the Solidity Compiler ![image](https://github.com/brad12345678901/TAC-Solidity/assets/90821323/5546c4df-222f-4f56-b21c-8e8d497ea11b) and the selected contract should be the file you imported. In this case, "intermediateproj1.sol"

Click "Compile intermediateproj1.sol" or <b>Ctrl + S </b>

Now navigate to "Deploy and Run Transaction" ![image](https://github.com/brad12345678901/TAC-Solidity/assets/90821323/d736eed0-98e0-4f83-8bf9-ccab5dce70c3) and deploy the contract "MyToken"

Once it is deployed, you can interact with it by going to the "Deployed/Unpinned Contracts" and call function such as mint or burn to do the simple process of minting and burning tokens, both functions require two parameters, one is an address and the other is the amount to be minted or to be burned. You could also see the value of which the name of the token itself and its abbreviation, you could also view the balances of a specific address by providing an address to the balances and clicking to see the balance currently held by the specific address. There's also a function to test the assert function
