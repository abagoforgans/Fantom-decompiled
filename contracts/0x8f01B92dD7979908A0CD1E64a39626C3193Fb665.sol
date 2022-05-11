contract main {




// =====================  Runtime code  =====================


const ethBalanceOf = eth.balance(this.address)


mapping of uint8 stor0;
address stor1;
mapping of uint256 stor2;
uint256 defaultFeeDivisor;
mapping of uint256 stor4;
uint256 defaultLiquidity;

function defaultLiquidity() {
    return defaultLiquidity
}

function isController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function defaultFeeDivisor() {
    return defaultFeeDivisor
}

function _fallback() payable {
    revert
}

function feeDivisor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(arg1)]:
        return 2000
    return stor2[address(arg1)]
}

function liquidity(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4[address(arg1)]:
        return stor4[address(arg1)]
    return defaultLiquidity
}

function relinquishControl() {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[msg.sender] = 0
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[address(arg1)] = 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setDefaultLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    if not arg1:
        revert with 0, 'INVALID'
    defaultLiquidity = arg1
    emit LiquidityChanged(defaultLiquidity, arg1, stor1);
    return defaultLiquidity
}

function setDefaultFeeDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    if not arg1:
        revert with 0, 'DIVISIONBYZERO'
    defaultFeeDivisor = arg1
    emit DefaultFeeDivisorChanged(defaultFeeDivisor, arg1, stor1);
    return defaultFeeDivisor
}

function setFeeDivisor(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    if not arg2:
        revert with 0, 'DIVISIONBYZERO'
    stor2[address(arg1)] = arg2
    emit FeeDivisorChanged(stor2[address(arg1)], arg2, stor1, arg1);
    return stor2[address(arg1)]
}

function transferEth(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    if eth.balance(this.address) < arg2:
        revert with 0, 'INSUFFICIENT_BALANCE'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'INSUFFICIENT_BALANCE'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
