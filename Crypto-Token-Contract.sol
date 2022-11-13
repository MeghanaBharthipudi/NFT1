pragma solidity ^0.8.4;

contract LearningSolidity{
    uint private tokens = 400;
    
    address public minter;

    //Exercise
    uint private totalSupply = 7;
    address public sender;

    //Constructor
    constructor()
    {
        minter = msg.sender;
    }

    //Mapping mapping(key => value) public mapName
    
    mapping(address => uint) public balances;

    //Events allows clients to react on specific contrat

    event Send(address from,address to,uint amount);

    //sending amount to the receiver
    function mint(address receiver,uint amount) public
    {
        require(msg.sender==minter);
        balances[receiver] += amount;
    }

    //Exercise
    function send(address receiver, uint amount) public{
           balances[msg.sender]-=amount;
           balances[receiver]+=amount;

           emit Send(msg.sender, receiver, amount);
    }
    
}
