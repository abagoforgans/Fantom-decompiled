contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


address owner;
address stor1;
address libraryAddress;
address tokenStorageAddress;

function owner() {
    return owner
}

function tokenStorage() {
    return tokenStorageAddress
}

function libraryAddress() {
    return address(libraryAddress)
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

function setLibraryAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(libraryAddress) = arg1
}

function setStorage(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenStorageAddress = arg1
    emit StorageUpdated(arg1);
}

function sub_7c3c71b6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool('6==7===6=s', address(libraryAddress), 23284 == ext_code.copy(arg1, 0 len 45) and Mask(136, 0, stor1), 0x5af43d82803e903d91602b57fd5bf3 == Mask(256, -104, ext_code.copy(arg1, 0 len 45)) << 104)
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
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

function sub_04e622c1(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    create contract with 0 wei
                    code: code.data[2847 len 2751], address(this.address)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    tokenStorageAddress = address(create.new_address)
    emit 0x6c9d76c1: address(create.new_address)
}

function sub_bc3b9501(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 160 >= 128 and ceil32(arg2.length) + ceil32(arg3.length) + 160 <= test266151307()
    mem[ceil32(arg2.length) + 128] = arg3.length
    require calldata.size >= arg3.length + arg3 + 36
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    require arg4 == address(arg4)
    if msg.value != 5 * 10^17:
        revert with 0, 'You must pay 0.5 FTM to create a Token'
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0x7a2d567d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 164] = 32
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 196] = arg3.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg3.length + 228] = 0
    require ext_code.size(tokenStorageAddress)
    staticcall tokenStorageAddress with:
            gas gas_remaining wei
           args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(arg3.length)) + 228 len 2 * ceil32(arg3.length)])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if 0, ext_call.return_data[4 len 28]:
        revert with 0, 'Symbol already used'
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, address(libraryAddress), 0x5af43d82803e903d91602b57fd5bf3
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 160] = 0x401dadf700000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 164] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 196] = 128
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 292] = arg2.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 324 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + arg2.length + 324] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 228] = ceil32(arg2.length) + 160
    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(return_data.size) + 324] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(return_data.size) + 356 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(return_data.size) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 356] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 260] = address(arg4)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x401dadf7 with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(return_data.size) + 164 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenCreated(address(create.new_address));
    require ext_code.size(tokenStorageAddress)
    call tokenStorageAddress.addToken(address rg1) with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
