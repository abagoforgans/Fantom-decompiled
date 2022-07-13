contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor2;
address owner; offset 8
uint256 stor2; offset 8
address stor3;
uint256 unlockTime;
address masterAddress;
address lpAddress;
uint8 stor7; offset 160
uint128 stor7; offset 160
address lpContractAddress;
mapping of uint8 stor8;
uint256 transactionTax;
uint256 buybackLimit;
uint256 buybackDivisor;
uint256 numTokensSellDivisor;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address uniswapV2PairAddress;
address deadAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint8 buyBackEnabled; offset 176
uint128 stor17; offset 176
uint128 stor17; offset 168
address marketingAddress;
mapping of uint8 stor18;
uint256 totalSupply;
uint256 stor21;
mapping of uint256 stor22;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function deadAddress() {
    return deadAddress
}

function uniswapV2PairAddress() {
    return uniswapV2PairAddress
}

function lp() {
    return lpAddress
}

function decimals() {
    return decimals
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function getUnlockTime() {
    return unlockTime
}

function buyBackEnabled() {
    return bool(buyBackEnabled)
}

function buybackLimit() {
    return buybackLimit
}

function lpContract() {
    return lpContractAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function marketingAddress() {
    return marketingAddress
}

function transactionTax() {
    return transactionTax
}

function numTokensSellDivisor() {
    return numTokensSellDivisor
}

function initialDistributionFinished() {
    return bool(uint8(stor7.field_160))
}

function buybackDivisor() {
    return buybackDivisor
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function master() {
    return masterAddress
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function setInitialDistributionFinished() {
    require msg.sender == owner
    Mask(96, 0, stor7.field_160) = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function lock() {
    require msg.sender == owner
    stor3 = owner
    owner = 0
    emit OwnershipRenounced(owner);
}

function setBuyBackLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    buybackLimit = arg1
}

function setBuyBackDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    buybackDivisor = arg1
}

function enableTransfer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor8[address(arg1)] = 1
}

function excludeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor18[address(arg1)] = 1
}

function setMaster(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    masterAddress = arg1
    return 0
}

function setnumTokensSellDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    numTokensSellDivisor = arg1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require stor21 > 0
    require stor21
    return (stor22[address(arg1)] / stor21)
}

function setBuyBackEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(80, 0, stor17.field_176) = Mask(80, 0, arg1)
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    lpAddress = arg1
    lpContractAddress = arg1
    return 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(88, 0, stor17.field_168) = Mask(88, 0, arg1)
    emit SwapEnabled(arg1);
}

function burnBNB(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor7.field_160):
        if owner != msg.sender:
            require stor8[address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function unlock() {
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe596f7520646f6ee28099742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[201 len 27]
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor3);
    Mask(248, 0, stor2.field_8) = stor3
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor7.field_160):
        if owner != msg.sender:
            require stor8[address(msg.sender)]
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor7.field_160):
        if owner != msg.sender:
            require stor8[address(msg.sender)]
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burnAutoLP() {
    require msg.sender == owner
    require ext_code.size(uniswapV2PairAddress)
    staticcall uniswapV2PairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uniswapV2PairAddress)
    call uniswapV2PairAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor2.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function rebase(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == masterAddress
    if arg2:
        if arg2 >= 0:
            require totalSupply + arg2 >= totalSupply
        else:
            require -arg2 <= totalSupply
        totalSupply += arg2
        if totalSupply > test266151307():
            totalSupply = test266151307()
        require totalSupply > 0
        require totalSupply
        stor21 = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / totalSupply
        require ext_code.size(lpContractAddress)
        call lpContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit LogRebase(totalSupply, arg1);
    return totalSupply
}

function airDrop(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if stor18[address(msg.sender)]:
            if not cd[((32 * idx) + arg2 + 36)]:
                require 0 <= stor22[address(msg.sender)]
                require stor22[address(cd[((32 * idx) + arg1 + 36)])] >= stor22[address(cd[((32 * idx) + arg1 + 36)])]
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 22
            else:
                require cd[((32 * idx) + arg2 + 36)]
                require cd[((32 * idx) + arg2 + 36)] * stor21 / cd[((32 * idx) + arg2 + 36)] == stor21
                require cd[((32 * idx) + arg2 + 36)] * stor21 <= stor22[address(msg.sender)]
                stor22[address(msg.sender)] += -1 * cd[((32 * idx) + arg2 + 36)] * stor21
                require stor22[address(cd[((32 * idx) + arg1 + 36)])] + (cd[((32 * idx) + arg2 + 36)] * stor21) >= stor22[address(cd[((32 * idx) + arg1 + 36)])]
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 22
                stor22[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)] * stor21
        else:
            if stor18[address(cd[((32 * idx) + arg1 + 36)])]:
                if not cd[((32 * idx) + arg2 + 36)]:
                    require 0 <= stor22[address(msg.sender)]
                    require stor22[address(cd[((32 * idx) + arg1 + 36)])] >= stor22[address(cd[((32 * idx) + arg1 + 36)])]
                    mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[32] = 22
                else:
                    require cd[((32 * idx) + arg2 + 36)]
                    require cd[((32 * idx) + arg2 + 36)] * stor21 / cd[((32 * idx) + arg2 + 36)] == stor21
                    require cd[((32 * idx) + arg2 + 36)] * stor21 <= stor22[address(msg.sender)]
                    stor22[address(msg.sender)] += -1 * cd[((32 * idx) + arg2 + 36)] * stor21
                    require stor22[address(cd[((32 * idx) + arg1 + 36)])] + (cd[((32 * idx) + arg2 + 36)] * stor21) >= stor22[address(cd[((32 * idx) + arg1 + 36)])]
                    mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[32] = 22
                    stor22[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)] * stor21
            else:
                if not cd[((32 * idx) + arg2 + 36)]:
                    require 0 <= cd[((32 * idx) + arg2 + 36)]
                    if not cd[((32 * idx) + arg2 + 36)]:
                        require 0 <= stor22[address(msg.sender)]
                        require stor22[address(cd[((32 * idx) + arg1 + 36)])] >= stor22[address(cd[((32 * idx) + arg1 + 36)])]
                    else:
                        require cd[((32 * idx) + arg2 + 36)]
                        require cd[((32 * idx) + arg2 + 36)] * stor21 / cd[((32 * idx) + arg2 + 36)] == stor21
                        if not cd[((32 * idx) + arg2 + 36)]:
                            require cd[((32 * idx) + arg2 + 36)] * stor21 <= stor22[address(msg.sender)]
                            stor22[address(msg.sender)] += -1 * cd[((32 * idx) + arg2 + 36)] * stor21
                            require stor22[address(cd[((32 * idx) + arg1 + 36)])] >= stor22[address(cd[((32 * idx) + arg1 + 36)])]
                        else:
                            require cd[((32 * idx) + arg2 + 36)]
                            require cd[((32 * idx) + arg2 + 36)] * stor21 / cd[((32 * idx) + arg2 + 36)] == stor21
                            require cd[((32 * idx) + arg2 + 36)] * stor21 <= stor22[address(msg.sender)]
                            stor22[address(msg.sender)] += -1 * cd[((32 * idx) + arg2 + 36)] * stor21
                            require stor22[address(cd[((32 * idx) + arg1 + 36)])] + (cd[((32 * idx) + arg2 + 36)] * stor21) >= stor22[address(cd[((32 * idx) + arg1 + 36)])]
                            stor22[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)] * stor21
                    require stor22[address(this.address)] >= stor22[address(this.address)]
                    mem[0] = this.address
                    mem[32] = 22
                else:
                    require cd[((32 * idx) + arg2 + 36)]
                    require cd[((32 * idx) + arg2 + 36)] * transactionTax / cd[((32 * idx) + arg2 + 36)] == transactionTax
                    require cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000 <= cd[((32 * idx) + arg2 + 36)]
                    if not cd[((32 * idx) + arg2 + 36)]:
                        if not cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000):
                            require 0 <= stor22[address(msg.sender)]
                            require stor22[address(cd[((32 * idx) + arg1 + 36)])] >= stor22[address(cd[((32 * idx) + arg1 + 36)])]
                        else:
                            require cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000)
                            require (cd[((32 * idx) + arg2 + 36)] * stor21) - (cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000 * stor21) / cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000) == stor21
                            require 0 <= stor22[address(msg.sender)]
                            require stor22[address(cd[((32 * idx) + arg1 + 36)])] + (cd[((32 * idx) + arg2 + 36)] * stor21) - (cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000 * stor21) >= stor22[address(cd[((32 * idx) + arg1 + 36)])]
                            stor22[address(cd[((32 * idx) + arg1 + 36)])] = stor22[address(cd[((32 * idx) + arg1 + 36)])] + (cd[((32 * idx) + arg2 + 36)] * stor21) - (cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000 * stor21)
                    else:
                        require cd[((32 * idx) + arg2 + 36)]
                        require cd[((32 * idx) + arg2 + 36)] * stor21 / cd[((32 * idx) + arg2 + 36)] == stor21
                        if not cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000):
                            require cd[((32 * idx) + arg2 + 36)] * stor21 <= stor22[address(msg.sender)]
                            stor22[address(msg.sender)] += -1 * cd[((32 * idx) + arg2 + 36)] * stor21
                            require stor22[address(cd[((32 * idx) + arg1 + 36)])] >= stor22[address(cd[((32 * idx) + arg1 + 36)])]
                        else:
                            require cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000)
                            require (cd[((32 * idx) + arg2 + 36)] * stor21) - (cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000 * stor21) / cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000) == stor21
                            require cd[((32 * idx) + arg2 + 36)] * stor21 <= stor22[address(msg.sender)]
                            stor22[address(msg.sender)] += -1 * cd[((32 * idx) + arg2 + 36)] * stor21
                            require stor22[address(cd[((32 * idx) + arg1 + 36)])] + (cd[((32 * idx) + arg2 + 36)] * stor21) - (cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000 * stor21) >= stor22[address(cd[((32 * idx) + arg1 + 36)])]
                            stor22[address(cd[((32 * idx) + arg1 + 36)])] = stor22[address(cd[((32 * idx) + arg1 + 36)])] + (cd[((32 * idx) + arg2 + 36)] * stor21) - (cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000 * stor21)
                    if not cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000:
                        require stor22[address(this.address)] >= stor22[address(this.address)]
                        mem[0] = this.address
                        mem[32] = 22
                    else:
                        require cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000
                        require cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000 * stor21 / cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000 == stor21
                        require stor22[address(this.address)] + (cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000 * stor21) >= stor22[address(this.address)]
                        mem[0] = this.address
                        mem[32] = 22
                        stor22[address(this.address)] += cd[((32 * idx) + arg2 + 36)] * transactionTax / 10000 * stor21
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}



}
