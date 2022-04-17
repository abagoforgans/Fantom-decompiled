contract main {




// =====================  Runtime code  =====================


const proxyCreationCode = 32, 715, code.data[3758 len 715], mem[843 len 21] >> 5464, 0

const proxyRuntimeCode = 32, 171, code.data[4473 len 171], mem[299 len 21] >> 1112, 0


function _fallback() payable {
    revert
}

function createProxy(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    create contract with 0 wei
                    code: code.data[3758 len 715], arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2.length > 0:
        call create.new_address with:
             gas gas_remaining wei
            args arg2[all]
        require ext_call.success
    emit ProxyCreation(address(create.new_address));
    return address(create.new_address)
}

function calculateCreateProxyWithNonceAddress(address arg1, bytes arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    mem[ceil32(arg2.length) + 160] = sha3(arg2[all])
    mem[ceil32(arg2.length) + 192] = arg3
    mem[ceil32(arg2.length) + 128] = 64
    create2 contract with 0 wei
                    salt: sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
                    code: code.data[3758 len 715], mem[ceil32(arg2.length) + 971 len 21] >> 5464, arg1
    if not address(create2.new_address):
        revert with 0, 'Create2 call failed'
    revert with 0, 32, 20, Mask(160, 96, address(create2.new_address), 0, 0) >> 96, 0
}

function createProxyWithNonce(address arg1, bytes arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    create2 contract with 0 wei
                    salt: sha3(sha3(arg2[all]), arg3)
                    code: code.data[3758 len 715], mem[ceil32(ceil32(arg2.length)) + 940 len 21] >> 5464, arg1
    if not address(create2.new_address):
        revert with 0, 'Create2 call failed'
    if arg2.length > 0:
        call create2.new_address with:
             gas gas_remaining wei
            args arg2[all]
        require ext_call.success
    emit ProxyCreation(address(create2.new_address));
    return address(create2.new_address)
}

function createProxyWithCallback(address arg1, bytes arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    mem[ceil32(ceil32(arg2.length)) + 309 len 715] = code.data[3758 len 715]
    create2 contract with 0 wei
                    salt: sha3(sha3(arg2[all]), sha3(arg3, arg4))
                    code: code.data[3758 len 715], mem[ceil32(ceil32(arg2.length)) + 1024 len 21] >> 5464, arg1
    if not address(create2.new_address):
        revert with 0, 'Create2 call failed'
    if arg2.length > 0:
        call create2.new_address with:
             gas gas_remaining wei
            args arg2[all]
        require ext_call.success
    emit ProxyCreation(address(create2.new_address));
    if arg4:
        mem[ceil32(ceil32(ceil32(arg2.length))) + 975 len ceil32(arg2.length)] = arg2[all], mem[ceil32(ceil32(arg2.length)) + arg2.length + -ceil32(ceil32(ceil32(arg2.length))) + 1077 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(ceil32(ceil32(arg2.length))) + arg2.length + 975] = 0
        require ext_code.size(arg4)
        call arg4.0x1e52b518 with:
             gas gas_remaining wei
            args address(create2.new_address), address(arg1), Array(len=arg2.length, data=mem[ceil32(ceil32(ceil32(arg2.length))) + 975 len ceil32(arg2.length)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return address(create2.new_address)
}



}
