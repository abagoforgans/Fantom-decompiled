contract main {




// =====================  Runtime code  =====================


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
            if s + 1 < mem[96] / 2:
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
            mem[ceil32(32 * ('cd', 4).length) + 97] = 32
            _191 = mem[96]
            mem[ceil32(32 * ('cd', 4).length) + 129] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 64
            while s < _191:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len ceil32(32 * ('cd', 4).length) + (32 * _191) + -mem[64] + 161
    revert with 0, 50
}

function setSushi(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=2, data=mem[388 len 64]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[288] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[320] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[324] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[516 len 96]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x74b23882a30290451a17c44f4f05243b6b58c76d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[384] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[416] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[448] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[452] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[644 len 96]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[512] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[544] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[772 len 96]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x321162cd933e2be498cd2267a90534a804051b11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[608] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[640] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[672] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[704] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[708] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[900 len 96]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x49d68029688eabf473097a2fc38ef61633a3c7a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[736] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[768] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[800] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[832] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[836] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 736
    t = 1028
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1028 len 96]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[864] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[896] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[928] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[960] = 0x29b0da86e484e1c0029b56e817912d778ac0ec69
    mem[992] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[996] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 864
    t = 1188
    while idx < 4:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=4, data=mem[1188 len 128]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x29b0da86e484e1c0029b56e817912d778ac0ec69
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1024] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[1056] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1088] = 0xb3654dc3d10ea7645f8319668e8f54d2574fbdc8
    mem[1120] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1124] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1024
    t = 1316
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1316 len 96]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0xb3654dc3d10ea7645f8319668e8f54d2574fbdc8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1152] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[1184] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1216] = 0x657a1861c15a3ded9af0b6799a195a249ebdcbc6
    mem[1248] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1252] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1152
    t = 1444
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1444 len 96]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x657a1861c15a3ded9af0b6799a195a249ebdcbc6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9987b56f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=2, data=mem[388 len 64]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[288] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[320] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[324] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[516 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x74b23882a30290451a17c44f4f05243b6b58c76d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[384] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[416] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[448] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[452] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[644 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[512] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[544] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[772 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x321162cd933e2be498cd2267a90534a804051b11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[608] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[640] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[672] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[704] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[708] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[900 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x49d68029688eabf473097a2fc38ef61633a3c7a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[736] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[768] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[800] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[832] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[836] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 736
    t = 1028
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1028 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[864] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[896] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[928] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[960] = 0x29b0da86e484e1c0029b56e817912d778ac0ec69
    mem[992] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[996] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 864
    t = 1188
    while idx < 4:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=4, data=mem[1188 len 128]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x29b0da86e484e1c0029b56e817912d778ac0ec69
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1024] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[1056] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1088] = 0xb3654dc3d10ea7645f8319668e8f54d2574fbdc8
    mem[1120] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1124] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1024
    t = 1316
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1316 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0xb3654dc3d10ea7645f8319668e8f54d2574fbdc8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1152] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[1184] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1216] = 0x657a1861c15a3ded9af0b6799a195a249ebdcbc6
    mem[1248] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1252] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1152
    t = 1444
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1444 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x657a1861c15a3ded9af0b6799a195a249ebdcbc6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1280] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[1312] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1344] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[1376] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1380] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1280
    t = 1572
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1572 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_57fc67c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=2, data=mem[388 len 64]), 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6
    mem[256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[288] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[320] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[324] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[516 len 96]), 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6, 0x74b23882a30290451a17c44f4f05243b6b58c76d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352] = 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6
    mem[384] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[416] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[448] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[452] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[644 len 96]), 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6
    mem[512] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[544] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[772 len 96]), 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6, 0x321162cd933e2be498cd2267a90534a804051b11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[608] = 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6
    mem[640] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[672] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[704] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[708] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[900 len 96]), 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6, 0x49d68029688eabf473097a2fc38ef61633a3c7a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[736] = 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6
    mem[768] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[800] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[832] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[836] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 736
    t = 1028
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1028 len 96]), 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6, 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[864] = 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6
    mem[896] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[928] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[960] = 0x29b0da86e484e1c0029b56e817912d778ac0ec69
    mem[992] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[996] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 864
    t = 1188
    while idx < 4:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=4, data=mem[1188 len 128]), 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6, 0x29b0da86e484e1c0029b56e817912d778ac0ec69
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1024] = 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6
    mem[1056] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1088] = 0xb3654dc3d10ea7645f8319668e8f54d2574fbdc8
    mem[1120] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1124] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1024
    t = 1316
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1316 len 96]), 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6, 0xb3654dc3d10ea7645f8319668e8f54d2574fbdc8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1152] = 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6
    mem[1184] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1216] = 0x657a1861c15a3ded9af0b6799a195a249ebdcbc6
    mem[1248] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1252] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1152
    t = 1444
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1444 len 96]), 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6, 0x657a1861c15a3ded9af0b6799a195a249ebdcbc6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1280] = 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6
    mem[1312] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1344] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[1376] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1380] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1280
    t = 1572
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1572 len 96]), 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6, 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1408] = 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6
    mem[1440] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1472] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[1504] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1508] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1408
    t = 1700
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1700 len 96]), 0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6, 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ff84c304(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=2, data=mem[388 len 64]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[256] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[288] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[320] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[324] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[516 len 96]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x74b23882a30290451a17c44f4f05243b6b58c76d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[384] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[416] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[448] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[452] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[644 len 96]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[512] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[544] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[772 len 96]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x321162cd933e2be498cd2267a90534a804051b11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[608] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[640] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[672] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[704] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[708] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[900 len 96]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x49d68029688eabf473097a2fc38ef61633a3c7a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[736] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[768] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[800] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[832] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[836] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 736
    t = 1028
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1028 len 96]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[864] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[896] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[928] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[960] = 0x29b0da86e484e1c0029b56e817912d778ac0ec69
    mem[992] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[996] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 864
    t = 1188
    while idx < 4:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=4, data=mem[1188 len 128]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x29b0da86e484e1c0029b56e817912d778ac0ec69
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1024] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[1056] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1088] = 0xb3654dc3d10ea7645f8319668e8f54d2574fbdc8
    mem[1120] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1124] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1024
    t = 1316
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1316 len 96]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0xb3654dc3d10ea7645f8319668e8f54d2574fbdc8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1152] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[1184] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1216] = 0x657a1861c15a3ded9af0b6799a195a249ebdcbc6
    mem[1248] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1252] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1152
    t = 1444
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1444 len 96]), 0xae75a438b2e0cb8bb01ec1e1e376de11d44477, 0x657a1861c15a3ded9af0b6799a195a249ebdcbc6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[1280] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[1312] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1344] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1348] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1280
    t = 1540
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=2, data=mem[1540 len 64]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1376] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[1408] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1440] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[1472] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1476] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1376
    t = 1668
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1668 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x74b23882a30290451a17c44f4f05243b6b58c76d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1504] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[1536] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1568] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[1600] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1604] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1504
    t = 1796
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1796 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1632] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[1664] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1696] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[1728] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1732] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1632
    t = 1924
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[1924 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x321162cd933e2be498cd2267a90534a804051b11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1760] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[1792] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1824] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[1856] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1860] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1760
    t = 2052
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[2052 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x49d68029688eabf473097a2fc38ef61633a3c7a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1888] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[1920] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[1952] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    mem[1984] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1988] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 1888
    t = 2180
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[2180 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[2016] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[2048] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[2080] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    mem[2112] = 0x29b0da86e484e1c0029b56e817912d778ac0ec69
    mem[2144] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[2148] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 2016
    t = 2340
    while idx < 4:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=4, data=mem[2340 len 128]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x29b0da86e484e1c0029b56e817912d778ac0ec69
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[2176] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[2208] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[2240] = 0xb3654dc3d10ea7645f8319668e8f54d2574fbdc8
    mem[2272] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[2276] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
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
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[2468 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0xb3654dc3d10ea7645f8319668e8f54d2574fbdc8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[2304] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[2336] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[2368] = 0x657a1861c15a3ded9af0b6799a195a249ebdcbc6
    mem[2400] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[2404] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 2304
    t = 2596
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[2596 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0x657a1861c15a3ded9af0b6799a195a249ebdcbc6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[2432] = 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a
    mem[2464] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c
    mem[2496] = 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    mem[2528] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[2532] = 0xf491e7b69e4244ad4002bc14e878a34207e38c
    idx = 0
    s = 2432
    t = 2724
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xf491e7b69e4244ad4002bc14e878a34207e38c, 0x152ee697f2e276fa89e96742e9bb9ab1f2e61b, Array(len=3, data=mem[2724 len 96]), 0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3a, 0xae75a438b2e0cb8bb01ec1e1e376de11d44477
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    # nil
}



}
