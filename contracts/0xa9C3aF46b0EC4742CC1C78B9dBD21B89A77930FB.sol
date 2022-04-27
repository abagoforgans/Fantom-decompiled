contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_9fd3a405(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = arg2
}

function sub_0b4ec3f0(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    return 32, 192, address(arg1), address(arg2), address(arg3), address(arg4), address(arg5), address(arg6)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f50cd32c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    require ('cd', 4)[5] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[5] + 4)]
    require cd[(cd[4] + ('cd', 4)[5] + 4)] >= 192
    require cd[(cd[4] + ('cd', 4)[5] + 36)] == address(cd[(cd[4] + ('cd', 4)[5] + 36)])
    require cd[(cd[4] + ('cd', 4)[5] + 68)] == address(cd[(cd[4] + ('cd', 4)[5] + 68)])
    require cd[(cd[4] + ('cd', 4)[5] + 100)] == address(cd[(cd[4] + ('cd', 4)[5] + 100)])
    require cd[(cd[4] + ('cd', 4)[5] + 132)] == address(cd[(cd[4] + ('cd', 4)[5] + 132)])
    require cd[(cd[4] + ('cd', 4)[5] + 164)] == address(cd[(cd[4] + ('cd', 4)[5] + 164)])
    require cd[(cd[4] + ('cd', 4)[5] + 196)] == address(cd[(cd[4] + ('cd', 4)[5] + 196)])
    if address(cd[(cd[4] + ('cd', 4)[5] + 68)]):
        require ext_code.size(address(cd[(cd[4] + ('cd', 4)[5] + 68)]))
        call address(cd[(cd[4] + ('cd', 4)[5] + 68)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(cd[4] + ('cd', 4)[5] + 36)]), cd[36]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'UniswapWithdrawHelper: tokenA approve failed.'
    if eth.balance(cd[(cd[4] + ('cd', 4)[5] + 196)]):
        require ext_code.size(address(cd[(cd[4] + ('cd', 4)[5] + 36)]))
        call address(cd[(cd[4] + ('cd', 4)[5] + 36)]).0x6ceaad4d with:
             gas gas_remaining wei
            args address(cd[(cd[4] + ('cd', 4)[5] + 68)]), cd[36], address(cd[(cd[4] + ('cd', 4)[5] + 100)]), address(cd[(cd[4] + ('cd', 4)[5] + 132)]), address(cd[(cd[4] + ('cd', 4)[5] + 164)]), address(cd[(cd[4] + ('cd', 4)[5] + 196)])
    else:
        require ('cd', 4)[0] == address(('cd', 4)[0])
        require cd[36] > stor1[address(('cd', 4)[0])]
        require ('cd', 4)[0] == address(('cd', 4)[0])
        if cd[36] < stor1[address(('cd', 4)[0])]:
            revert with 0, 17
        require ('cd', 4)[0] == address(('cd', 4)[0])
        require ('cd', 4)[0] == address(('cd', 4)[0])
        require ext_code.size(address(cd[(cd[4] + ('cd', 4)[5] + 36)]))
        call address(cd[(cd[4] + ('cd', 4)[5] + 36)]).0x89fecbd5 with:
             gas gas_remaining wei
            args address(('cd', 4)[0]), stor1[address(('cd', 4)[0])], address(cd[(cd[4] + ('cd', 4)[5] + 132)]), address(cd[(cd[4] + ('cd', 4)[5] + 196)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(cd[4] + ('cd', 4)[5] + 36)]))
        call address(cd[(cd[4] + ('cd', 4)[5] + 36)]).0x6ceaad4d with:
             gas gas_remaining wei
            args address(cd[(cd[4] + ('cd', 4)[5] + 68)]), cd[36] - stor1[address(('cd', 4)[0])], address(cd[(cd[4] + ('cd', 4)[5] + 100)]), address(cd[(cd[4] + ('cd', 4)[5] + 132)]), address(cd[(cd[4] + ('cd', 4)[5] + 164)]), address(cd[(cd[4] + ('cd', 4)[5] + 196)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
