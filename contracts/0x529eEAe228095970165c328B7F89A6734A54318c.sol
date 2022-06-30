contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
array of address vaults;
array of address strategies;
array of uint256 sub_2e4d5dae;
mapping of uint8 sub_d7731c2c;

function sub_2e4d5dae(?) payable {
    return sub_2e4d5dae[arg1][0 len sub_2e4d5dae[arg1].length]
}

function sub_389372d4(?) payable {
    return strategies.length
}

function vaults(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < vaults.length
    return vaults[arg1]
}

function owner() payable {
    return owner
}

function strategies(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < strategies.length
    return strategies[arg1]
}

function sub_d7731c2c(?) payable {
    require calldata.size - 4 >= 32
    return sub_d7731c2c[arg1]
}

function pendingOwner() payable {
    return pendingOwner
}

function sub_f9895f1f(?) payable {
    return vaults.length
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    return (owner == arg1)
}

function sub_8498f50c(?) payable {
    require calldata.size - 4 >= 32
    return (sub_d7731c2c[address(arg1)] == 1)
}

function sub_98425ee1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_d7731c2c[address(arg1)]:
        sub_d7731c2c[address(arg1)] = 2
        emit 0x8b35b417: arg1
}

function acceptOwnership() payable {
    if pendingOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 41, code.data[15781 len 41], mem[205 len 23]
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function enableStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_d7731c2c[address(arg1)]:
        strategies.length++
        strategies[strategies.length] = arg1
    sub_d7731c2c[address(arg1)] = 1
    emit 0xb42c8f37: arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[15707 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function proposeOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[15707 len 38], mem[202 len 26]
    emit OwnershipProposed(owner, arg1);
    pendingOwner = arg1
}

function sub_b771f73d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_d7731c2c[address(arg1)] != 1:
        revert with 0, 32, 36, code.data[15745 len 36], mem[ceil32(arg2.length) + 232 len 28]
    create2 contract with 0 wei
                    salt: sha3(this.address, vaults.length)
                    code: code.data[6229 len 9478]
    emit 0xc65e53c3: Array(len=arg2.length, data=arg2[all]), owner, address(create2.new_address), arg1
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address arg1, address arg2) with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    vaults.length++
    vaults[vaults.length] = address(create2.new_address)
    sub_2e4d5dae[address(create2.new_address)][] = Array(len=arg2.length, data=arg2[all])
    return address(create2.new_address)
}

function sub_54f9335e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2e4d5dae[address(arg1)][] = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0xd7a75034: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, arg1
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
        emit 0xd7a75034: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32], Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 192 len floor32(arg2.length) + -ceil32(arg2.length) + 32], arg1
}



}
