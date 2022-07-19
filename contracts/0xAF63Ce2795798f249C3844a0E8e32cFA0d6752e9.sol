contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Tits', 0

const totalSupply = 1000000000 * 10^18

const decimals = 9

const symbol = 'TITS', 0


address owner;
mapping of uint256 stor1;
mapping of uint256 allowance;
mapping of uint8 stor5;
uint256 stor7;
address stor13;
address stor14;
uint8 stor15; offset 160
uint128 stor15; offset 184
uint128 stor15; offset 176
uint128 stor15; offset 168
uint128 stor15; offset 160
address stor15;
uint256 stor16;

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function liftMaxTx() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = 1000000000 * 10^18
}

function blacklistBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor13
    stor5[address(arg1)] = 1
}

function removeFromBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor13
    stor5[address(arg1)] = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCooldownEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(72, 0, stor15.field_184) = Mask(72, 0, arg1)
}

function manualsend() {
    require msg.sender == stor13
    call stor13 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1[address(arg1)] > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor7 / 1000000000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / 1000000000 * 10^18:
        revert with 'NH{q', 18
    return (stor1[address(arg1)] / stor7 / 1000000000 * 10^18)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function manualswap() {
    require msg.sender == stor13
    if stor1[address(this.address)] > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor7 / 1000000000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / 1000000000 * 10^18:
        revert with 'NH{q', 18
    Mask(88, 0, stor15.field_168) = 1
    mem[320] = this.address
    require ext_code.size(stor14)
    staticcall stor14.WETH() with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[352] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not stor14:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor14] = stor1[address(this.address)] / stor7 / 1000000000 * 10^18
    emit Approval((stor1[address(this.address)] / stor7 / 1000000000 * 10^18), this.address, stor14);
    mem[ceil32(return_data.size) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 388] = stor1[address(this.address)] / stor7 / 1000000000 * 10^18
    idx = 0
    s = 320
    t = ceil32(return_data.size) + 580
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor14)
    call stor14.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor1[address(this.address)] / stor7 / 1000000000 * 10^18, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(88, 0, stor15.field_168) = 0
}

function openTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor15.field_160):
        revert with 0, 'trading is already open'
    stor14 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not stor14:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor14] = 1000000000 * 10^18
    emit Approval(1000000000 * 10^18, this.address, stor14);
    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    address(stor15.field_0) = ext_call.return_data[12 len 20]
    if stor1[address(this.address)] > stor7:
        revert with 0, 'Amount must be less than total reflections'
    if stor7 / 1000000000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / 1000000000 * 10^18:
        revert with 'NH{q', 18
    require ext_code.size(stor14)
    call stor14.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(this.address), stor1[address(this.address)] / stor7 / 1000000000 * 10^18, 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    Mask(80, 0, stor15.field_176) = 1
    Mask(72, 0, stor15.field_184) = 1
    stor16 = 1000000000 * 10^18
    Mask(96, 0, stor15.field_160) = 1
    require ext_code.size(address(stor15.field_0))
    call address(stor15.field_0).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor14, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
