contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'MiniBabyPika | t.me/MiniBabyPika'

const totalSupply = 1000000000 * 10^18

const decimals = 18

const symbol = 'MiniBabyPika', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor6;
uint256 stor8;
address stor14;
address stor15;
address stor16;
uint8 stor17; offset 160
uint128 stor17; offset 184
uint128 stor17; offset 176
uint128 stor17; offset 168
uint128 stor17; offset 160
address stor17;
uint256 stor18;

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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function delBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function setCooldownEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(72, 0, stor17.field_184) = Mask(72, 0, arg1)
}

function manualsend() {
    require msg.sender == stor14
    call stor14 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor15 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor8 / 1000000000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor8 / 1000000000 * 10^18:
        revert with 'NH{q', 18
    return (stor2[address(arg1)] / stor8 / 1000000000 * 10^18)
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

function setMaxTxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Amount must be greater than 0'
    if arg1 > 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028:
        revert with 'NH{q', 17
    if 1000000000 * 10^18 * arg1 / 1000000000 * 10^18 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    stor18 = 1000000000 * 10^18 * arg1 / 100
    emit MaxTxAmountUpdated(stor18);
}

function setBots(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function manualswap() {
    require msg.sender == stor14
    if stor2[address(this.address)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor8 / 1000000000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor8 / 1000000000 * 10^18:
        revert with 'NH{q', 18
    Mask(88, 0, stor17.field_168) = 1
    mem[320] = this.address
    require ext_code.size(stor16)
    staticcall stor16.WETH() with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[352] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not stor16:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor16] = stor2[address(this.address)] / stor8 / 1000000000 * 10^18
    emit Approval((stor2[address(this.address)] / stor8 / 1000000000 * 10^18), this.address, stor16);
    mem[ceil32(return_data.size) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 388] = stor2[address(this.address)] / stor8 / 1000000000 * 10^18
    idx = 0
    s = 320
    t = ceil32(return_data.size) + 580
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor16)
    call stor16.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor2[address(this.address)] / stor8 / 1000000000 * 10^18, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(88, 0, stor17.field_168) = 0
}

function openTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor17.field_160):
        revert with 0, 'trading is already open'
    stor16 = 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor16] = 1000000000 * 10^18
    emit Approval(1000000000 * 10^18, this.address, stor16);
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52)
    staticcall 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52.WETH() with:
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
    address(stor17.field_0) = ext_call.return_data[12 len 20]
    if stor2[address(this.address)] > stor8:
        revert with 0, 'Amount must be less than total reflections'
    if stor8 / 1000000000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor8 / 1000000000 * 10^18:
        revert with 'NH{q', 18
    require ext_code.size(stor16)
    call stor16.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(this.address), stor2[address(this.address)] / stor8 / 1000000000 * 10^18, 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    Mask(80, 0, stor17.field_176) = 1
    Mask(72, 0, stor17.field_184) = 1
    stor18 = 100000000 * 10^18
    Mask(96, 0, stor17.field_160) = 1
    require ext_code.size(address(stor17.field_0))
    call address(stor17.field_0).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor16, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
