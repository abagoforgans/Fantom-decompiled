contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 aSBlock;
uint256 aEBlock;
uint256 aCap;
uint256 aTot;
uint256 aAmt;
uint256 sSBlock;
uint256 sEBlock;
uint256 sCap;
uint256 sTot;
uint256 sChunk;
uint256 sPrice;

function name() {
    return name[0 len name.length]
}

function aSBlock() {
    return aSBlock
}

function decimals() {
    return decimals
}

function sPrice() {
    return sPrice
}

function aTot() {
    return aTot
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sTot() {
    return sTot
}

function owner() {
    return owner
}

function sSBlock() {
    return sSBlock
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sChunk() {
    return sChunk
}

function aEBlock() {
    return aEBlock
}

function sCap() {
    return sCap
}

function aCap() {
    return aCap
}

function sEBlock() {
    return sEBlock
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function aAmt() {
    return aAmt
}

function _fallback() payable {
  stop
}

function viewAirdrop() {
    return aSBlock, aEBlock, aCap, aTot, aAmt
}

function viewSale() {
    return sSBlock, sEBlock, sCap, sTot, sChunk, sPrice
}

function totalSupply() {
    require balanceOf[0] <= stor5
    return (stor5 - balanceOf[0])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function startAirdrop(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    aSBlock = arg1
    aEBlock = arg2
    aAmt = arg3
    aCap = arg4
    aTot = 0
}

function clearETH() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function startSale(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require msg.sender == owner
    sSBlock = arg1
    sEBlock = arg2
    sChunk = arg3
    sPrice = arg4
    sCap = arg5
    sTot = 0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function getAirdrop(address arg1) {
    require calldata.size - 4 >= 32
    require aSBlock <= block.number
    require block.number <= aEBlock
    if aTot >= aCap:
        require not aCap
    aTot++
    if arg1 != msg.sender:
        if balanceOf[address(arg1)]:
            if arg1 != 0xd7b1161c9a877e569313a8ac9b6ee1911ada7161:
                require aAmt <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= aAmt
                require balanceOf[address(arg1)] + aAmt >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += aAmt
                emit Transfer(aAmt, this.address, arg1);
    require aAmt <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= aAmt
    require balanceOf[address(msg.sender)] + aAmt >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += aAmt
    emit Transfer(aAmt, this.address, msg.sender);
    return 1
}

function tokenSale(address arg1) payable {
    require calldata.size - 4 >= 32
    require sSBlock <= block.number
    require block.number <= sEBlock
    if sTot >= sCap:
        require not sCap
    require sPrice
    sTot++
    if not sChunk:
        if arg1 != msg.sender:
            if balanceOf[address(arg1)]:
                if arg1 != 0xd7b1161c9a877e569313a8ac9b6ee1911ada7161:
                    require msg.value / sPrice <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= msg.value / sPrice
                    require balanceOf[address(arg1)] + (msg.value / sPrice) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += msg.value / sPrice
                    emit Transfer((msg.value / sPrice), this.address, arg1);
        require msg.value / sPrice <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= msg.value / sPrice
        require balanceOf[address(msg.sender)] + (msg.value / sPrice) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value / sPrice
        emit Transfer((msg.value / sPrice), this.address, msg.sender);
    else:
        if arg1 != msg.sender:
            if balanceOf[address(arg1)]:
                if arg1 != 0xd7b1161c9a877e569313a8ac9b6ee1911ada7161:
                    require sChunk * msg.value / sPrice <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] += -1 * sChunk * msg.value / sPrice
                    require balanceOf[address(arg1)] + (sChunk * msg.value / sPrice) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += sChunk * msg.value / sPrice
                    emit Transfer((sChunk * msg.value / sPrice), this.address, arg1);
        require sChunk * msg.value / sPrice <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += -1 * sChunk * msg.value / sPrice
        require balanceOf[address(msg.sender)] + (sChunk * msg.value / sPrice) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += sChunk * msg.value / sPrice
        emit Transfer((sChunk * msg.value / sPrice), this.address, msg.sender);
    return 1
}



}
