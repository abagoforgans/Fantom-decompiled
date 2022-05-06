contract main {




// =====================  Runtime code  =====================


const name = 'Scoobidydoo'

const decimals = 6

const symbol = 'SCOOB'

const TOKEN_PRECISION = 10^6


uint256 stor0;
mapping of struct balanceOf;
address stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8; offset 160
uint128 stor8; offset 160
address stor8;
uint256 stor9;

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(balanceOf[address(arg1)].field_0)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_256
}

function balanceOfTokenCirculation(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_768
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return balanceOf[address(arg1)][2][address(arg2)].field_0
}

function _fallback() payable {
    revert
}

function infoStableSystem() {
    return bool(stor5), stor3, stor4
}

function totalSupply() {
    require stor3
    return ((10^6 * block.timestamp - stor7 / 3600 / stor3 * stor4) + 30 * 10^6)
}

function setStableCoinSystem(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    stor5 = uint8(arg1)
}

function changePreSalePriceIfToHigh(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    stor9 = arg1
}

function setPrizeFromNewAddress(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor2
    stor3 = arg1
    stor4 = arg2
}

function whitelist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor2
    balanceOf[address(arg1)].field_0 = uint8(arg2)
    emit Whitelist(arg2, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    balanceOf[address(msg.sender)][2][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function tokensToClaim(address arg1) {
    require calldata.size - 4 >= 32
    require stor3
    require balanceOf[address(arg1)].field_768
    return ((30 * 10^6 * 10^12 * balanceOf[address(arg1)].field_256 / balanceOf[address(arg1)].field_768) + (10^6 * block.timestamp - stor7 / 3600 / stor3 * stor4 * 10^12 * balanceOf[address(arg1)].field_256 / balanceOf[address(arg1)].field_768) / 10^12)
}

function allInfoFor(address arg1) {
    require calldata.size - 4 >= 32
    require stor3
    require stor3
    require balanceOf[address(arg1)].field_768
    return (10^6 * block.timestamp - stor7 / 3600 / stor3 * stor4) + 30 * 10^6, 
           balanceOf[address(arg1)].field_768,
           balanceOf[address(arg1)].field_256,
           (30 * 10^6 * 10^12 * balanceOf[address(arg1)].field_256 / balanceOf[address(arg1)].field_768) + (10^6 * block.timestamp - stor7 / 3600 / stor3 * stor4 * 10^12 * balanceOf[address(arg1)].field_256 / balanceOf[address(arg1)].field_768) / 10^12
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require balanceOf[address(msg.sender)].field_256 >= arg2
    require balanceOf[address(msg.sender)].field_256 >= 1
    if not stor5:
        balanceOf[address(msg.sender)].field_256 -= arg2
        balanceOf[address(arg1)].field_256 += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not balanceOf[address(arg1)].field_256:
            balanceOf[address(arg1)].field_768 = stor0
        if stor6 + 3600 < block.timestamp:
            stor6 = block.timestamp
            require stor3
            stor0 = (10^6 * block.timestamp - stor7 / 3600 / stor3 * stor4) + 30 * 10^6
        require balanceOf[address(msg.sender)].field_768
        balanceOf[address(msg.sender)].field_256 = 10^12 * balanceOf[address(msg.sender)].field_256 / balanceOf[address(msg.sender)].field_768 * stor0 / 10^12
        balanceOf[address(msg.sender)].field_768 = stor0
        require balanceOf[address(arg1)].field_768
        balanceOf[address(arg1)].field_256 = 10^12 * balanceOf[address(arg1)].field_256 / balanceOf[address(arg1)].field_768 * stor0 / 10^12
        balanceOf[address(arg1)].field_768 = stor0
        require balanceOf[address(msg.sender)].field_768
        balanceOf[address(msg.sender)].field_256 -= 10^12 * arg2 / balanceOf[address(msg.sender)].field_768 * stor0 / 10^12
        balanceOf[address(arg1)].field_256 += 10^12 * arg2 / balanceOf[address(msg.sender)].field_768 * stor0 / 10^12
        emit Transfer((10^12 * arg2 / balanceOf[address(msg.sender)].field_768 * stor0 / 10^12), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require balanceOf[address(arg1)][2][address(msg.sender)].field_0 >= arg3
    balanceOf[address(arg1)][2][address(msg.sender)].field_0 -= arg3
    require balanceOf[address(arg1)].field_256 >= arg3
    require balanceOf[address(arg1)].field_256 >= 1
    if not stor5:
        balanceOf[address(arg1)].field_256 -= arg3
        balanceOf[address(arg2)].field_256 += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if not balanceOf[address(arg2)].field_256:
            balanceOf[address(arg2)].field_768 = stor0
        if stor6 + 3600 < block.timestamp:
            stor6 = block.timestamp
            require stor3
            stor0 = (10^6 * block.timestamp - stor7 / 3600 / stor3 * stor4) + 30 * 10^6
        require balanceOf[address(arg1)].field_768
        balanceOf[address(arg1)].field_256 = 10^12 * balanceOf[address(arg1)].field_256 / balanceOf[address(arg1)].field_768 * stor0 / 10^12
        balanceOf[address(arg1)].field_768 = stor0
        require balanceOf[address(arg2)].field_768
        balanceOf[address(arg2)].field_256 = 10^12 * balanceOf[address(arg2)].field_256 / balanceOf[address(arg2)].field_768 * stor0 / 10^12
        balanceOf[address(arg2)].field_768 = stor0
        require balanceOf[address(arg1)].field_768
        balanceOf[address(arg1)].field_256 -= 10^12 * arg3 / balanceOf[address(arg1)].field_768 * stor0 / 10^12
        balanceOf[address(arg2)].field_256 += 10^12 * arg3 / balanceOf[address(arg1)].field_768 * stor0 / 10^12
        emit Transfer((10^12 * arg3 / balanceOf[address(arg1)].field_768 * stor0 / 10^12), arg1, arg2);
    return 1
}

function preSaleFinished() {
    require msg.sender == stor2
    Mask(96, 0, stor8.field_160) = 0
    require balanceOf[address(this.address)].field_256 >= balanceOf[address(this.address)].field_256
    require balanceOf[address(this.address)].field_256 >= 1
    if not stor5:
        balanceOf[address(this.address)].field_256 = 0
        balanceOf[stor2].field_256 += balanceOf[address(this.address)].field_256
        emit Transfer(balanceOf[address(this.address)].field_256, this.address, stor2);
    else:
        if not balanceOf[stor2].field_256:
            balanceOf[stor2].field_768 = stor0
        if stor6 + 3600 < block.timestamp:
            stor6 = block.timestamp
            require stor3
            stor0 = (10^6 * block.timestamp - stor7 / 3600 / stor3 * stor4) + 30 * 10^6
        require balanceOf[address(this.address)].field_768
        balanceOf[address(this.address)].field_256 = 10^12 * balanceOf[address(this.address)].field_256 / balanceOf[address(this.address)].field_768 * stor0 / 10^12
        balanceOf[address(this.address)].field_768 = stor0
        require balanceOf[stor2].field_768
        balanceOf[stor2].field_256 = 10^12 * balanceOf[stor2].field_256 / balanceOf[stor2].field_768 * stor0 / 10^12
        balanceOf[stor2].field_768 = stor0
        require balanceOf[address(this.address)].field_768
        balanceOf[address(this.address)].field_256 -= 10^12 * balanceOf[address(this.address)].field_256 / balanceOf[address(this.address)].field_768 * stor0 / 10^12
        balanceOf[stor2].field_256 += 10^12 * balanceOf[address(this.address)].field_256 / balanceOf[address(this.address)].field_768 * stor0 / 10^12
        emit Transfer((10^12 * balanceOf[address(this.address)].field_256 / balanceOf[address(this.address)].field_768 * stor0 / 10^12), this.address, stor2);
}

function preSale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require uint8(stor8.field_160)
    require stor9
    require msg.value > 10^18 * arg1 / stor9
    require balanceOf[address(this.address)].field_256 >= 10^6 * arg1
    require balanceOf[address(this.address)].field_256 >= 1
    if not stor5:
        balanceOf[address(this.address)].field_256 += -1 * 10^6 * arg1
        balanceOf[address(msg.sender)].field_256 += 10^6 * arg1
        emit Transfer((10^6 * arg1), this.address, msg.sender);
    else:
        if not balanceOf[address(msg.sender)].field_256:
            balanceOf[address(msg.sender)].field_768 = stor0
        if stor6 + 3600 < block.timestamp:
            stor6 = block.timestamp
            require stor3
            stor0 = (10^6 * block.timestamp - stor7 / 3600 / stor3 * stor4) + 30 * 10^6
        require balanceOf[address(this.address)].field_768
        balanceOf[address(this.address)].field_256 = 10^12 * balanceOf[address(this.address)].field_256 / balanceOf[address(this.address)].field_768 * stor0 / 10^12
        balanceOf[address(this.address)].field_768 = stor0
        require balanceOf[address(msg.sender)].field_768
        balanceOf[address(msg.sender)].field_256 = 10^12 * balanceOf[address(msg.sender)].field_256 / balanceOf[address(msg.sender)].field_768 * stor0 / 10^12
        balanceOf[address(msg.sender)].field_768 = stor0
        require balanceOf[address(this.address)].field_768
        balanceOf[address(this.address)].field_256 -= 10^18 * arg1 / balanceOf[address(this.address)].field_768 * stor0 / 10^12
        balanceOf[address(msg.sender)].field_256 += 10^18 * arg1 / balanceOf[address(this.address)].field_768 * stor0 / 10^12
        emit Transfer((10^18 * arg1 / balanceOf[address(this.address)].field_768 * stor0 / 10^12), this.address, msg.sender);
    call address(stor8.field_0) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
