contract main {




// =====================  Runtime code  =====================


const name = 'Acorn'

const decimals = 18

const symbol = 'ACN'


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of struct lockedBalanceOf;
uint8 stor4;
mapping of uint8 stor5;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function transferEnable() {
    return bool(stor4)
}

function isAdmin(address arg1) {
    return bool(stor5[address(arg1)])
}

function admins(address arg1) {
    return bool(stor5[arg1])
}

function lockedBalanceOf(address arg1) {
    return lockedBalanceOf[address(arg1)].field_256
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e1b79552(?) {
    return lockedBalanceOf[address(arg1)].field_0
}

function lockedAccounts(address arg1) {
    return lockedBalanceOf[arg1].field_0, lockedBalanceOf[arg1].field_256
}

function _fallback() payable {
  stop
}

function sub_d75bf506(?) {
    require msg.sender == owner
    stor4 = uint8(arg1)
}

function addAdmin(address arg1) {
    require msg.sender == owner
    stor5[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require msg.sender == owner
    stor5[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function unlock(address arg1) {
    require msg.sender == owner
    require arg1
    lockedBalanceOf[address(arg1)].field_256 = 0
    lockedBalanceOf[address(arg1)].field_0 = 0
    emit 0x5acaf5aa: 0, arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function isLocked(address arg1) {
    if 0 >= lockedBalanceOf[address(arg1)].field_256:
        return (0 < lockedBalanceOf[address(arg1)].field_256)
    return (block.timestamp < lockedBalanceOf[address(arg1)].field_0)
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function lock(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg2 > 0
    require arg1
    lockedBalanceOf[address(arg1)].field_256 = arg2
    lockedBalanceOf[address(arg1)].field_0 = arg3
    emit 0x5acaf5aa: arg2, arg3, arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require arg1
    require stor4
    if block.timestamp < lockedBalanceOf[address(msg.sender)].field_0:
        require balanceOf[address(msg.sender)] > lockedBalanceOf[address(msg.sender)].field_256
        require lockedBalanceOf[address(msg.sender)].field_256 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - lockedBalanceOf[address(msg.sender)].field_256 >= arg2
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 > 0
    require arg2
    require stor4
    if block.timestamp < lockedBalanceOf[address(arg1)].field_0:
        require balanceOf[address(arg1)] > lockedBalanceOf[address(arg1)].field_256
        require lockedBalanceOf[address(arg1)].field_256 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - lockedBalanceOf[address(arg1)].field_256 >= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function claimToken(address arg1) {
    require msg.sender == owner
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    ('bool', 'ext_call.success')
}

function transferAndLock(address arg1, uint256 arg2) {
    if not stor5[address(msg.sender)]:
        require msg.sender == owner
    require arg2 > 0
    require arg1
    if arg2:
        require arg2
        require 70 * arg2 / arg2 == 70
    require 70 * arg2 == (100 * 70 * arg2 / 100) + (70 * arg2 % 100)
    require (70 * arg2 / 100) + lockedBalanceOf[address(arg1)].field_256 >= lockedBalanceOf[address(arg1)].field_256
    lockedBalanceOf[address(arg1)].field_256 += 70 * arg2 / 100
    require block.timestamp + (720 * 24 * 3600) >= block.timestamp
    lockedBalanceOf[address(arg1)].field_0 = block.timestamp + (720 * 24 * 3600)
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    emit 0x5acaf5aa: 70 * arg2 / 100, lockedBalanceOf[address(arg1)].field_0, arg1
}



}
