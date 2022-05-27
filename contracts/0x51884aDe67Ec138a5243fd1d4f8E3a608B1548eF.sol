contract main {




// =====================  Runtime code  =====================


const sub_2d3e2798(?) = 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3

const usdt = 0x49d68029688eabf473097a2fc38ef61633a3c7a

const wbtc = 0x321162cd933e2be498cd2267a90534a804051b11

const usdc = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const weth = 0x74b23882a30290451a17c44f4f05243b6b58c76d

const dai = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e

const wftm = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

const sub_fcb5427f(?) = 0xf491e7b69e4244ad4002bc14e878a34207e38c29


address owner;

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

function sub_ed05d671(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if var44002 >= var44001:
        mem[ceil32(32 * ('cd', 4).length) + 97] = 32
        mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 4).length
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + -mem[64] + 161
    if var46001 < ('cd', 4).length:
        if var50001 < var50002:
            revert with 0, 17
        if var56001 < 1:
            revert with 0, 17
        idx = var58002 - 1
        s = var58006
        t = var58007
        while idx < ('cd', 4).length:
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = mem[(32 * idx) + 140 len 20]
            if mem[96] < s:
                revert with 0, 17
            if mem[96] - s < 1:
                revert with 0, 17
            if mem[96] + -s - 1 >= mem[96]:
                revert with 0, 50
            mem[(32 * mem[96] + -s - 1) + 128] = address(t)
            if s == -1:
                revert with 0, 17
            if s + 1 >= mem[96] / 2:
                mem[ceil32(32 * ('cd', 4).length) + 97] = 32
                mem[ceil32(32 * ('cd', 4).length) + 129] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 64
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len ceil32(32 * ('cd', 4).length) + (32 * mem[96]) + -mem[64] + 161
            if s + 1 >= mem[96]:
                revert with 0, 50
            if mem[96] < s + 1:
                revert with 0, 17
            if mem[96] + -s - 1 < 1:
                revert with 0, 17
            idx = mem[96] + -s - 2
            s = s + 1
            t = mem[(32 * s + 1) + 128]
            continue 
    revert with 0, 50
}

function sub_545e8857(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[160] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[388 len 64]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x74b23882a30290451a17c44f4f05243b6b58c76d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[256] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[288] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[292] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 224
    t = 484
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[484 len 64]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[352] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[384] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[388] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 320
    t = 580
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[580 len 64]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x321162cd933e2be498cd2267a90534a804051b11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[416] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[448] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[480] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[484] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 416
    t = 676
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[676 len 64]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x49d68029688eabf473097a2fc38ef61633a3c7a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[512] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[544] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 512
    t = 772
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[772 len 64]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setUsdt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[388 len 64]), 0x49d68029688eabf473097a2fc38ef61633a3c7a, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[288] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[320] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[324] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 224
    t = 516
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[516 len 96]), 0x49d68029688eabf473097a2fc38ef61633a3c7a, 0x74b23882a30290451a17c44f4f05243b6b58c76d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[384] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[416] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[448] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[452] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 352
    t = 644
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[644 len 96]), 0x49d68029688eabf473097a2fc38ef61633a3c7a, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[512] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[544] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 480
    t = 772
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[772 len 96]), 0x49d68029688eabf473097a2fc38ef61633a3c7a, 0x321162cd933e2be498cd2267a90534a804051b11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[608] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[640] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[672] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[704] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[708] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 608
    t = 900
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[900 len 96]), 0x49d68029688eabf473097a2fc38ef61633a3c7a, 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setUsdc(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[388 len 64]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[288] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[320] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[324] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 224
    t = 516
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[516 len 96]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75, 0x74b23882a30290451a17c44f4f05243b6b58c76d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[384] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[416] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[448] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[452] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 352
    t = 644
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[644 len 96]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75, 0x321162cd933e2be498cd2267a90534a804051b11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[512] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[544] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 480
    t = 772
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[772 len 96]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75, 0x49d68029688eabf473097a2fc38ef61633a3c7a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[608] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[640] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[672] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[704] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[708] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 608
    t = 900
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[900 len 96]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75, 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDai(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[388 len 64]), 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[288] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[320] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[324] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 224
    t = 516
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[516 len 96]), 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e, 0x74b23882a30290451a17c44f4f05243b6b58c76d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[384] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[416] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[448] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[452] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 352
    t = 644
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[644 len 96]), 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[512] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[544] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 480
    t = 772
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[772 len 96]), 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e, 0x321162cd933e2be498cd2267a90534a804051b11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[608] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[640] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[672] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[704] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[708] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 608
    t = 900
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[900 len 96]), 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e, 0x49d68029688eabf473097a2fc38ef61633a3c7a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setWeth(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[388 len 64]), 0x74b23882a30290451a17c44f4f05243b6b58c76d, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[288] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[320] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[324] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 224
    t = 516
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[516 len 96]), 0x74b23882a30290451a17c44f4f05243b6b58c76d, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[384] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[416] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[448] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[452] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 352
    t = 644
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[644 len 96]), 0x74b23882a30290451a17c44f4f05243b6b58c76d, 0x321162cd933e2be498cd2267a90534a804051b11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[512] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[544] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 480
    t = 772
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[772 len 96]), 0x74b23882a30290451a17c44f4f05243b6b58c76d, 0x49d68029688eabf473097a2fc38ef61633a3c7a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[608] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[640] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[672] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[704] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[708] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 608
    t = 900
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[900 len 96]), 0x74b23882a30290451a17c44f4f05243b6b58c76d, 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3eec5384(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[388 len 64]), 0x321162cd933e2be498cd2267a90534a804051b11, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[288] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[320] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[324] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 224
    t = 516
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[516 len 96]), 0x321162cd933e2be498cd2267a90534a804051b11, 0x74b23882a30290451a17c44f4f05243b6b58c76d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[384] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[416] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[448] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[452] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 352
    t = 644
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[644 len 96]), 0x321162cd933e2be498cd2267a90534a804051b11, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[512] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[544] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 480
    t = 772
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[772 len 96]), 0x321162cd933e2be498cd2267a90534a804051b11, 0x49d68029688eabf473097a2fc38ef61633a3c7a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[608] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[640] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[672] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[704] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[708] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 608
    t = 900
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[900 len 96]), 0x321162cd933e2be498cd2267a90534a804051b11, 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ff84c304(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[160] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[388 len 64]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x74b23882a30290451a17c44f4f05243b6b58c76d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[256] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[288] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[292] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 224
    t = 484
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[484 len 64]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[352] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[384] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[388] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 320
    t = 580
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[580 len 64]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x321162cd933e2be498cd2267a90534a804051b11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[416] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[448] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[480] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[484] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 416
    t = 676
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[676 len 64]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x49d68029688eabf473097a2fc38ef61633a3c7a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[512] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[544] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 512
    t = 772
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[772 len 64]), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[608] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[640] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[672] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[676] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 608
    t = 868
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[868 len 64]), 0x74b23882a30290451a17c44f4f05243b6b58c76d, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[704] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[736] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[768] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[800] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[804] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 704
    t = 996
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[996 len 96]), 0x74b23882a30290451a17c44f4f05243b6b58c76d, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[832] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[864] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[896] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[928] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[932] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 832
    t = 1124
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[1124 len 96]), 0x74b23882a30290451a17c44f4f05243b6b58c76d, 0x321162cd933e2be498cd2267a90534a804051b11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[960] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[992] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[1024] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[1056] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1060] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 960
    t = 1252
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[1252 len 96]), 0x74b23882a30290451a17c44f4f05243b6b58c76d, 0x49d68029688eabf473097a2fc38ef61633a3c7a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1088] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[1120] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[1152] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[1184] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1188] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 1088
    t = 1380
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[1380 len 96]), 0x74b23882a30290451a17c44f4f05243b6b58c76d, 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[1216] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[1248] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[1280] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1284] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 1216
    t = 1476
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[1476 len 64]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1312] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[1344] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[1376] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[1408] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1412] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 1312
    t = 1604
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[1604 len 96]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75, 0x74b23882a30290451a17c44f4f05243b6b58c76d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1440] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[1472] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[1504] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[1536] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1540] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 1440
    t = 1732
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[1732 len 96]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75, 0x321162cd933e2be498cd2267a90534a804051b11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1568] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[1600] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[1632] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[1664] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1668] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 1568
    t = 1860
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[1860 len 96]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75, 0x49d68029688eabf473097a2fc38ef61633a3c7a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1696] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[1728] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[1760] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[1792] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1796] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 1696
    t = 1988
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[1988 len 96]), 0x4068da6c83afcfa0e13ba15a6696662335d5b75, 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[1824] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[1856] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[1888] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1892] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 1824
    t = 2084
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=2, data=mem[2084 len 64]), 0x321162cd933e2be498cd2267a90534a804051b11, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1920] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[1952] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[1984] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[2016] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[2020] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 1920
    t = 2212
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[2212 len 96]), 0x321162cd933e2be498cd2267a90534a804051b11, 0x74b23882a30290451a17c44f4f05243b6b58c76d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[2048] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[2080] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[2112] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[2144] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[2148] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 2048
    t = 2340
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[2340 len 96]), 0x321162cd933e2be498cd2267a90534a804051b11, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[2176] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[2208] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[2240] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[2272] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[2276] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    idx = 0
    s = 2176
    t = 2468
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3, Array(len=3, data=mem[2468 len 96]), 0x321162cd933e2be498cd2267a90534a804051b11, 0x49d68029688eabf473097a2fc38ef61633a3c7a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}



}
