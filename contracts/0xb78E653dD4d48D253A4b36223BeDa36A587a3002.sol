contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function migrateOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function withdrawETH(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_fc405fa0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not arg2:
        require 0 == msg.value
    else:
        require arg2
        if arg2 * arg1.length / arg2 != arg1.length:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg1.length) + 229 len 31]
        require arg2 * arg1.length == msg.value
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        call mem[(32 * idx) + 140 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function getTotalBalancesOf(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg1.length:
        idx = idx + 1
        s = s + eth.balance(cd[((32 * idx) + arg1 + 36)])
        continue 
    return (s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length)
}

function getTotalETHBalancesOf(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg1.length:
        idx = idx + 1
        s = s + eth.balance(cd[((32 * idx) + arg1 + 36)])
        continue 
    return (s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length / 10^18)
}

function getBalancesOf(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    if arg1.length:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[(32 * idx) + 128] = eth.balance(cd[((32 * idx) + arg1 + 36)])
        require idx < arg1.length
        idx = idx + 1
        s = s + eth.balance(cd[((32 * idx) + arg1 + 36)])
        continue 
    mem[(32 * arg1.length) + 224 len floor32(arg1.length)] = mem[128 len floor32(arg1.length)]
    return s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length, 
           Array(len=arg1.length, data=mem[128 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 224 len (32 * arg1.length) - floor32(arg1.length)])
}

function sub_39323ed9(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        require 0 <= ext_call.return_data[0]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _30 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = address(_30)
            mem[(32 * arg2.length) + 196] = arg3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_30), arg3
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        require arg3
        if arg3 * arg2.length / arg3 != arg2.length:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg2.length) + 229 len 31]
        require arg3 * arg2.length <= ext_call.return_data[0]
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _27 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = address(_27)
            mem[(32 * arg2.length) + 196] = arg3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_27), arg3
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            continue 
}



}
