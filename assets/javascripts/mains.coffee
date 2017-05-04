# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

contractAddress = '0xaa41b09cf53a4a5363aaccaf102df74cb8fe166e'
abi = [{"constant":false,"inputs":[{"name":"voteNumber","type":"uint256"}],"name":"vote","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"votesForChoice2","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"numberOfVotesCast","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"votesForChoice5","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"votesForChoice4","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"choice1","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"choice4","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"choice2","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"getScore","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_choice1","type":"string"},{"name":"_choice2","type":"string"},{"name":"_choice3","type":"string"},{"name":"_choice4","type":"string"},{"name":"_choice5","type":"string"}],"name":"CommitRevealElection","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"votesForChoice1","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"choice5","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"votesForChoice3","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"choice3","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"anonymous":false,"inputs":[{"indexed":false,"name":"","type":"string"}],"name":"logString","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"","type":"string"},{"indexed":false,"name":"","type":"bytes32"}],"name":"newVoteCommit","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"","type":"string"},{"indexed":false,"name":"","type":"uint256"},{"indexed":false,"name":"","type":"uint256"},{"indexed":false,"name":"","type":"uint256"},{"indexed":false,"name":"","type":"uint256"},{"indexed":false,"name":"","type":"uint256"}],"name":"voteScore","type":"event"}]
code = "60606040526000600a55341561001157fe5b5b610e1a806100216000396000f300606060405236156100b45763ffffffff60e060020a6000350416630121b93f81146100b6578063031b6dbf146100cb57806322ce9bac146100ed5780632a5fc6b91461010f57806340624a471461013157806349e811c5146101535780637857b496146101e357806387cfa5bf14610273578063afd8206714610303578063b928afda14610393578063baa13bb5146104df578063cf2be52414610501578063e2159d4f14610591578063eb45fb2e146105b3575bfe5b34156100be57fe5b6100c9600435610643565b005b34156100d357fe5b6100db6108df565b60408051918252519081900360200190f35b34156100f557fe5b6100db6108e5565b60408051918252519081900360200190f35b341561011757fe5b6100db6108eb565b60408051918252519081900360200190f35b341561013957fe5b6100db6108f1565b60408051918252519081900360200190f35b341561015b57fe5b6101636108f7565b6040805160208082528351818301528351919283929083019185019080838382156101a9575b8051825260208311156101a957601f199092019160209182019101610189565b505050905090810190601f1680156101d55780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b34156101eb57fe5b610163610985565b6040805160208082528351818301528351919283929083019185019080838382156101a9575b8051825260208311156101a957601f199092019160209182019101610189565b505050905090810190601f1680156101d55780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b341561027b57fe5b610163610a13565b6040805160208082528351818301528351919283929083019185019080838382156101a9575b8051825260208311156101a957601f199092019160209182019101610189565b505050905090810190601f1680156101d55780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b341561030b57fe5b610163610aa0565b6040805160208082528351818301528351919283929083019185019080838382156101a9575b8051825260208311156101a957601f199092019160209182019101610189565b505050905090810190601f1680156101d55780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b341561039b57fe5b6100c9600480803590602001908201803590602001908080601f0160208091040260200160405190810160405280939291908181526020018383808284375050604080516020601f89358b0180359182018390048302840183019094528083529799988101979196509182019450925082915084018382808284375050604080516020601f89358b0180359182018390048302840183019094528083529799988101979196509182019450925082915084018382808284375050604080516020601f89358b0180359182018390048302840183019094528083529799988101979196509182019450925082915084018382808284375050604080516020601f89358b01803591820183900483028401830190945280835297999881019791965091820194509250829150840183828082843750949650610b7295505050505050565b005b34156104e757fe5b6100db610bf7565b60408051918252519081900360200190f35b341561050957fe5b610163610bfd565b6040805160208082528351818301528351919283929083019185019080838382156101a9575b8051825260208311156101a957601f199092019160209182019101610189565b505050905090810190601f1680156101d55780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b341561059957fe5b6100db610c8b565b60408051918252519081900360200190f35b34156105bb57fe5b610163610c91565b6040805160208082528351818301528351919283929083019185019080838382156101a9575b8051825260208311156101a957601f199092019160209182019101610189565b505050905090810190601f1680156101d55780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b80600114156106a857600580546001019055604080516020808252601a908201527f566f746520666f722063686f696365203120636f756e7465642e000000000000818301529051600080516020610dcf8339815191529181900360600190a16108d7565b806002141561070d57600680546001019055604080516020808252601a908201527f566f746520666f722063686f696365203220636f756e7465642e000000000000818301529051600080516020610dcf8339815191529181900360600190a16108d7565b806003141561077257600780546001019055604080516020808252601a908201527f566f746520666f722063686f696365203320636f756e7465642e000000000000818301529051600080516020610dcf8339815191529181900360600190a16108d7565b80600414156107d757600880546001019055604080516020808252601a908201527f566f746520666f722063686f696365203420636f756e7465642e000000000000818301529051600080516020610dcf8339815191529181900360600190a16108d7565b806005141561083c57600980546001019055604080516020808252601a908201527f566f746520666f722063686f696365203520636f756e7465642e000000000000818301529051600080516020610dcf8339815191529181900360600190a16108d7565b604080516020808252604c908201527f566f746520636f756c64206e6f7420626520726561642120566f746573206d75818301527f737420737461727420776974682074686520415343494920636861726163746560608201527f7220603160206f7220603260000000000000000000000000000000000000000060808201529051600080516020610dcf8339815191529181900360a00190a15b5b5b5b5b5b50565b60065481565b600a5481565b60095481565b60085481565b6000805460408051602060026001851615610100026000190190941693909304601f8101849004840282018401909252818152929183018282801561097d5780601f106109525761010080835404028352916020019161097d565b820191906000526020600020905b81548152906001019060200180831161096057829003601f168201915b505050505081565b6003805460408051602060026001851615610100026000190190941693909304601f8101849004840282018401909252818152929183018282801561097d5780601f106109525761010080835404028352916020019161097d565b820191906000526020600020905b81548152906001019060200180831161096057829003601f168201915b505050505081565b60018054604080516020600284861615610100026000190190941693909304601f8101849004840282018401909252818152929183018282801561097d5780601f106109525761010080835404028352916020019161097d565b820191906000526020600020905b81548152906001019060200180831161096057829003601f168201915b505050505081565b610aa8610d1c565b600554600654600754600854600954604080516020810196909652858101949094526060850192909252608084015260a083015260c08083526018908301527f54686520766f746520656e64656420696e20612074696521000000000000000060e0830152517f0a4439b39fe0ba529111e2c06c143577c6fbdce2fe722e1eb7084e50aeadc0b7918190036101000190a15060408051808201909152600581527f53636f726500000000000000000000000000000000000000000000000000000060208201525b90565b8451610b85906000906020880190610d2e565b508351610b99906001906020870190610d2e565b508251610bad906002906020860190610d2e565b508151610bc1906003906020850190610d2e565b508051610bd5906004906020840190610d2e565b50600060058190556006819055600781905560088190556009555b5050505050565b60055481565b6004805460408051602060026001851615610100026000190190941693909304601f8101849004840282018401909252818152929183018282801561097d5780601f106109525761010080835404028352916020019161097d565b820191906000526020600020905b81548152906001019060200180831161096057829003601f168201915b505050505081565b60075481565b6002805460408051602060018416156101000260001901909316849004601f8101849004840282018401909252818152929183018282801561097d5780601f106109525761010080835404028352916020019161097d565b820191906000526020600020905b81548152906001019060200180831161096057829003601f168201915b505050505081565b60408051602081019091526000815290565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f10610d6f57805160ff1916838001178555610d9c565b82800160010185558215610d9c579182015b82811115610d9c578251825591602001919060010190610d81565b5b50610da9929150610dad565b5090565b610b6f91905b80821115610da95760008155600101610db3565b5090565b9056000bb563d6789cea5d754d1b7f85bfebdfe7a1a86e2e0ffccfb8a6bbdb07826ae2a165627a7a72305820c26ce23eedc4a4eac3577f0c16335f38f99ab445569ad73257ff241de2c50fee0029"



contractAddress = "0xe3632b9ab0571d2601e804dfddc65eb51ab19310"
abi = [{"constant":true,"inputs":[],"name":"endBlock","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"newContract","type":"address"}],"name":"changeContract","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"startBlock","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"upgradeMaster","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"mainMaster","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"currentContract","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"currentVersion","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"newAddress","type":"address"}],"name":"changeUpgradeMaster","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"donate","outputs":[],"payable":true,"type":"function"},{"inputs":[{"name":"_startBlock","type":"uint256"},{"name":"_endBlock","type":"uint256"}],"payable":false,"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":false,"name":"_to","type":"address"},{"indexed":false,"name":"_amount","type":"uint256"}],"name":"fundLog","type":"event"}]
code = "6060604052341561000c57fe5b604051604080610896833981016040528080519060200190919080519060200190919050505b81811115156100415760006000fd5b33600260006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555033600360006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555081600081905550806001819055505b50505b6107b2806100e46000396000f30060606040523615610097576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff168063083c6323146100995780633d71c3af146100bf57806348cd4cb1146100f5578063600440cb1461011b5780636f0720d71461016d578063721d7d8e146101bf5780639d888e8614610211578063ea56a44d146102aa578063ed88c68e146102e0575bfe5b34156100a157fe5b6100a96102ea565b6040518082815260200191505060405180910390f35b34156100c757fe5b6100f3600480803573ffffffffffffffffffffffffffffffffffffffff169060200190919050506102f0565b005b34156100fd57fe5b6101056103ed565b6040518082815260200191505060405180910390f35b341561012357fe5b61012b6103f3565b604051808273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b341561017557fe5b61017d610419565b604051808273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b34156101c757fe5b6101cf61043f565b604051808273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b341561021957fe5b610221610465565b6040518080602001828103825283818151815260200191508051906020019080838360008314610270575b8051825260208311156102705760208201915060208101905060208303925061024c565b505050905090810190601f16801561029c5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b34156102b257fe5b6102de600480803573ffffffffffffffffffffffffffffffffffffffff16906020019091905050610503565b005b6102e8610600565b005b60015481565b600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff161415801561039c5750600360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1614155b156103a75760006000fd5b80600460006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055505b5b50565b60005481565b600360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1681565b600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1681565b600460009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1681565b60058054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156104fb5780601f106104d0576101008083540402835291602001916104fb565b820191906000526020600020905b8154815290600101906020018083116104de57829003601f168201915b505050505081565b600260009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16141580156105af5750600360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1614155b156105ba5760006000fd5b80600360006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055505b5b50565b7ffc2371305643a164508f32634b2d990a71e54656a5ced8d3da7df5122345739b3334604051808373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020018281526020019250505060405180910390a161067434610677565b5b565b6006805480600101828161068b9190610709565b916000526020600020900160005b33909190916101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050600780548060010182816106ef9190610735565b916000526020600020900160005b83909190915055505b50565b8154818355818115116107305781836000526020600020918201910161072f9190610761565b5b505050565b81548183558181151161075c5781836000526020600020918201910161075b9190610761565b5b505050565b61078391905b8082111561077f576000816000905550600101610767565b5090565b905600a165627a7a7230582001c6f7b858dfa5c23db9f4dbe3d2eb96fb967321e504d1622bf88b4397729b320029"
isActive = true



window.addEventListener 'load', ->

#  // Checking if Web3 has been injected by the browser (Mist/MetaMask)
  if (typeof web3 != 'undefined')
    #    // Use Mist/MetaMask's provider
    window.web3 = new Web3(web3.currentProvider)
  else
    console.log('No web3? You should consider trying MetaMask!')
    #// fallback - use your fallback strategy (local node / hosted node + in-dapp id mgmt / fail)
    #window.web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"))
    window.web3 = new Web3(new Web3.providers.HttpProvider("https://ropsten.infura.io/XTrNmygmqG6zMCZen6TJ"))
 # // Now you can start your app & access web3 freely:
  startApp()


startApp = ->
  simpleDappContract = web3.eth.contract(abi)
  simpleDapp = simpleDappContract.at(contractAddress)
  refreshResult()
#  document.getElementById('contractAddr').innerHTML = getLink(contractAddress);
  web3.eth.getAccounts (e,r) ->
    console.log('Account' + r[0])
    $(".current-account").text r[0]

  $(".vote-btn1").click ->
    simpleDapp.vote 1, (err, ret) ->
      refreshResult()
  $(".vote-btn2").click ->
    simpleDapp.vote 2, (err, ret) ->
      refreshResult()
  $(".vote-btn3").click ->
    simpleDapp.vote 3, (err, ret) ->
      refreshResult()
  $(".vote-btn4").click ->
    simpleDapp.vote 4, (err, ret) ->
      refreshResult()
  $(".vote-btn5").click ->
#    simpleDapp.vote 5, (err, ret) ->
#      refreshResult()
    simpleDapp.donate 1.5, (err, ret) ->
      alert ret



refreshResult = ->
  simpleDappContract = web3.eth.contract(abi)
  simpleDapp = simpleDappContract.at(contractAddress)
  $(".result1, .result2, .result3, .result4, .result5").text "Loading..."
  simpleDapp.votesForChoice1 (err, ret) ->
    $(".result1").text ret
  simpleDapp.votesForChoice2 (err, ret) ->
    $(".result2").text ret
  simpleDapp.votesForChoice3 (err, ret) ->
    $(".result3").text ret
  simpleDapp.votesForChoice4 (err, ret) ->
    $(".result4").text ret
  simpleDapp.votesForChoice5 (err, ret) ->
    $(".result5").text ret



window.contractAddress = contractAddress
window.abi = abi
window.startApp = startApp
window.refreshResult= refreshResult
window.code = code

