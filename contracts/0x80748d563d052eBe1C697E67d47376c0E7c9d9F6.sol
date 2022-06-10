contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
array of struct stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779001;

function poolLength() {
    return stor1.length
}

function owner() {
    return owner
}

function renounceOwnership() {
    revert with 0, 'can't renounceOwnership'
}

function withdrawMatic(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'MATIC_TRANSFER_FAILED'
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

function sub_e2bff5e6(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor1.length:
        revert with 0, 50
    if owner != msg.sender:
        if address(stor1[arg1].field_768) != msg.sender:
            revert with 0, '!owner'
    require ext_code.size(address(stor1[arg1].field_0))
    call address(stor1[arg1].field_0).resume() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8a524fa7(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor1.length:
        revert with 0, 50
    if owner != msg.sender:
        if address(stor1[arg1].field_768) != msg.sender:
            revert with 0, '!owner'
    require ext_code.size(address(stor1[arg1].field_0))
    call address(stor1[arg1].field_0).0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cf258e67(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor1.length:
        revert with 0, 50
    require ext_code.size(address(stor1[arg1].field_0))
    call address(stor1[arg1].field_0).0xbf772173 with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b5833d7b(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor1.length:
        revert with 0, 50
    if owner != msg.sender:
        if address(stor1[arg1].field_768) != msg.sender:
            revert with 0, '!owner'
    require ext_code.size(address(stor1[arg1].field_0))
    call address(stor1[arg1].field_0).0x4991f1f8 with:
         gas gas_remaining wei
        args address(stor1[arg1].field_512)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bc3cfaa7(?) {
    require calldata.size - 4 >= 64
    if arg1 >= stor1.length:
        revert with 0, 50
    if owner != msg.sender:
        if address(stor1[arg1].field_768) != msg.sender:
            revert with 0, '!owner'
    require ext_code.size(address(stor1[arg1].field_0))
    call address(stor1[arg1].field_0).0x2f87e2e1 with:
         gas gas_remaining wei
        args arg2, address(stor1[arg1].field_512)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d50c92dc(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= stor1.length:
        revert with 0, 50
    if owner != msg.sender:
        if address(stor1[arg1].field_768) != msg.sender:
            revert with 0, '!owner'
    require ext_code.size(address(stor1[arg1].field_0))
    call address(stor1[arg1].field_0).0xf940e385 with:
         gas gas_remaining wei
        args address(arg2), address(stor1[arg1].field_512)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_93bb1c87(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if arg1 >= stor1.length:
        revert with 0, 50
    if owner != msg.sender:
        if address(stor1[arg1].field_768) != msg.sender:
            revert with 0, '!owner'
    require ext_code.size(address(stor1[arg1].field_0))
    call address(stor1[arg1].field_0).0x5860ee3c with:
         gas gas_remaining wei
        args address(arg2), address(stor1[arg1].field_512), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function earnAll() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        require ext_code.size(address(stor1[idx].field_0))
        staticcall address(stor1[idx].field_0).isPaused() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _12 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_12] == bool(mem[_12])
        if not mem[_12]:
            if idx >= stor1.length:
                revert with 0, 50
            mem[0] = 1
            mem[mem[64]] = 0xd389800f00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(stor1[idx].field_0))
            call address(stor1[idx].field_0).0xd389800f with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f248a9f0(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor1.length:
        revert with 0, 50
    if owner != msg.sender:
        if address(stor1[arg1].field_768) != msg.sender:
            revert with 0, '!owner'
    require ext_code.size(address(stor1[arg1].field_0))
    call address(stor1[arg1].field_0).0x4700d305 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= stor1.length:
        revert with 0, 50
    require ext_code.size(address(stor1[arg1].field_0))
    staticcall address(stor1[arg1].field_0).0x12accf93 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 >= stor1.length:
        revert with 0, 50
    require ext_code.size(address(stor1[arg1].field_0))
    call address(stor1[arg1].field_0).0xf940e385 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(stor1[arg1].field_512)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f8c11e32(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if arg2 >= stor1.length:
        revert with 0, 'invalid end'
    idx = arg1
    while idx <= arg2:
        if idx >= stor1.length:
            revert with 0, 50
        mem[0] = 1
        require ext_code.size(address(stor1[idx].field_0))
        staticcall address(stor1[idx].field_0).isPaused() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_14] == bool(mem[_14])
        if not mem[_14]:
            if idx >= stor1.length:
                revert with 0, 50
            mem[0] = 1
            mem[mem[64]] = 0xd389800f00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(stor1[idx].field_0))
            call address(stor1[idx].field_0).0xd389800f with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_55ebedec(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor1.length:
        revert with 0, 50
    if owner != msg.sender:
        if address(stor1[arg1].field_768) != msg.sender:
            revert with 0, '!owner'
    require ext_code.size(address(stor1[arg1].field_0))
    staticcall address(stor1[arg1].field_0).wantToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'want token not set'
    if arg1 >= stor1.length:
        revert with 0, 50
    require ext_code.size(address(stor1[arg1].field_0))
    staticcall address(stor1[arg1].field_0).wantToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 >= stor1.length:
        revert with 0, 50
    require ext_code.size(address(stor1[arg1].field_0))
    call address(stor1[arg1].field_0).0xf940e385 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(stor1[arg1].field_512)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1c1115c1(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    u = 32 * ('cd', 36).length
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        u = cd[s]
        idx = idx + 1
        continue 
    if cd[4] >= stor1.length:
        revert with 0, 50
    if owner != msg.sender:
        if address(stor1[cd[4]].field_768) != msg.sender:
            revert with 0, '!owner'
    mem[ceil32(32 * ('cd', 36).length) + 97] = 0xe0ad64200000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 36).length) + 101] = 32
    mem[ceil32(32 * ('cd', 36).length) + 133] = ('cd', 36).length
    idx = 0
    s = ceil32(32 * ('cd', 36).length) + 165
    t = 128
    while idx < ('cd', 36).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(stor1[cd[4]].field_0))
    call address(stor1[cd[4]].field_0).0xe0ad642 with:
         gas gas_remaining wei
        args Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 36).length) + 165 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_50aeefd7(?) {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if arg1 >= stor1.length:
        revert with 0, 50
    if owner != msg.sender:
        if address(stor1[arg1].field_768) != msg.sender:
            revert with 0, '!owner'
    address(stor1[arg1].field_0) = address(arg2)
    if bool(stor1[arg1].field_256):
        if bool(stor1[arg1].field_256) == uint255(stor1[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor1[arg1].field_256 = 0
            idx = 0
            while (uint255(stor1[arg1].field_256) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1[arg1].field_256) == stor1[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if arg3.length:
            stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1)][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor1[arg1].field_256 = 0
            idx = 0
            while stor1[arg1].field_257 % 128 + 31 / 32 > idx:
                stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    if arg1 >= stor1.length:
        revert with 0, 50
    address(stor1[arg1].field_512) = address(arg4)
    address(stor1[arg1].field_768) = address(arg5)
}

function sub_d25eda37(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1.length++
    address(stor1[stor1.length].field_0) = address(arg1)
    if bool(storB10E[stor1.length].field_0):
        if bool(storB10E[stor1.length].field_0) == uint255(storB10E[stor1.length].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor[sha3((4 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)][] = Array(len=arg2.length, data=arg2[all])
        else:
            storB10E[stor1.length].field_0 = 0
            idx = 0
            while (uint255(storB10E[stor1.length].field_0) * 0.5) + 31 / 32 > idx:
                stor[idx + sha3((4 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)] = 0
                idx = idx + 1
                continue 
    else:
        if bool(storB10E[stor1.length].field_0) == storB10E[stor1.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor[sha3((4 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)][] = Array(len=arg2.length, data=arg2[all])
        else:
            storB10E[stor1.length].field_0 = 0
            idx = 0
            while storB10E[stor1.length].field_1 % 128 + 31 / 32 > idx:
                stor[idx + sha3((4 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)] = 0
                idx = idx + 1
                continue 
    storB10E[stor1.length] = address(arg3)
    storB10E[stor1.length] = address(arg4)
}

function withdraw(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_5860ee3c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'not enough balance'
    mem[ceil32(return_data.size) + 132] = address(arg2)
    mem[ceil32(return_data.size) + 164] = arg3
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor1.length
    if bool(stor1[arg1].field_256):
        if bool(stor1[arg1].field_256) == uint255(stor1[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1[arg1].field_256):
            if bool(stor1[arg1].field_256) == uint255(stor1[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1[arg1].field_256):
                if 31 >= uint255(stor1[arg1].field_256) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor1[arg1].field_264)
                else:
                    mem[128] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor1[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor1[arg1].field_256) == stor1[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor1[arg1].field_257 % 128:
                if 31 >= stor1[arg1].field_257 % 128:
                    mem[128] = 256 * Mask(248, 0, stor1[arg1].field_264)
                else:
                    mem[128] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_257 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor1[arg1].field_0), 
               Array(len=2 * Mask(256, -1, stor1[arg1].field_256), data=mem[128 len ceil32(uint255(stor1[arg1].field_256) * 0.5)]),
               address(stor1[arg1].field_512),
               address(stor1[arg1].field_768)
    if bool(stor1[arg1].field_256) == stor1[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor1[arg1].field_256):
        if bool(stor1[arg1].field_256) == uint255(stor1[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1[arg1].field_256):
            if 31 >= uint255(stor1[arg1].field_256) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor1[arg1].field_264)
            else:
                mem[128] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0
                idx = 128
                s = 0
                while (uint255(stor1[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor1[arg1].field_256) == stor1[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor1[arg1].field_257 % 128:
            if 31 >= stor1[arg1].field_257 % 128:
                mem[128] = 256 * Mask(248, 0, stor1[arg1].field_264)
            else:
                mem[128] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_257 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor1[arg1].field_0), 
           Array(len=stor1[arg1].field_256 % 128, data=mem[128 len ceil32(stor1[arg1].field_257 % 128)]),
           address(stor1[arg1].field_512),
           address(stor1[arg1].field_768)
}

function depositAll(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor1.length:
        revert with 0, 50
    if owner != msg.sender:
        if address(stor1[arg1].field_768) != msg.sender:
            revert with 0, '!owner'
    require ext_code.size(address(stor1[arg1].field_0))
    staticcall address(stor1[arg1].field_0).0x12accf93 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 >= stor1.length:
        revert with 0, 50
    mem[ceil32(return_data.size) + 100] = address(stor1[arg1].field_512)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(stor1[arg1].field_512)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= stor1.length:
        revert with 0, 50
    require ext_code.size(address(stor1[arg1].field_0))
    staticcall address(stor1[arg1].field_0).0x12accf93 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 132] = address(stor1[arg1].field_512)
    mem[(4 * ceil32(return_data.size)) + 164] = address(stor1[arg1].field_0)
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = 100
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1[arg1].field_512)
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(4 * ceil32(return_data.size)) + 228] = 32
    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor1[arg1].field_512), uint32(stor1[arg1].field_512), address(stor1[arg1].field_0), ext_call.return_data[0], 0
    mem[(4 * ceil32(return_data.size)) + 392] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor1[arg1].field_512), uint32(stor1[arg1].field_512), address(stor1[arg1].field_0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor1[arg1].field_512), uint32(stor1[arg1].field_512), address(stor1[arg1].field_0), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
            if not mem[(4 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if arg1 >= stor1.length:
        revert with 0, 50
    require ext_code.size(address(stor1[arg1].field_0))
    call address(stor1[arg1].field_0).0xfc16d377 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= stor1.length:
        revert with 0, 50
    if owner != msg.sender:
        if address(stor1[arg1].field_768) != msg.sender:
            revert with 0, '!owner'
    require ext_code.size(address(stor1[arg1].field_0))
    staticcall address(stor1[arg1].field_0).0x12accf93 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 >= stor1.length:
        revert with 0, 50
    mem[ceil32(return_data.size) + 100] = address(stor1[arg1].field_512)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(stor1[arg1].field_512)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'fund account dont have enough token'
    if arg1 >= stor1.length:
        revert with 0, 50
    require ext_code.size(address(stor1[arg1].field_0))
    staticcall address(stor1[arg1].field_0).0x12accf93 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 132] = address(stor1[arg1].field_512)
    mem[(4 * ceil32(return_data.size)) + 164] = address(stor1[arg1].field_0)
    mem[(4 * ceil32(return_data.size)) + 196] = arg2
    mem[(4 * ceil32(return_data.size)) + 96] = 100
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor1[arg1].field_512)
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(4 * ceil32(return_data.size)) + 228] = 32
    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor1[arg1].field_512), uint32(stor1[arg1].field_512), address(stor1[arg1].field_0), arg2, 0
    mem[(4 * ceil32(return_data.size)) + 392] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor1[arg1].field_512), uint32(stor1[arg1].field_512), address(stor1[arg1].field_0), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor1[arg1].field_512), uint32(stor1[arg1].field_512), address(stor1[arg1].field_0), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
            if not mem[(4 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if arg1 >= stor1.length:
        revert with 0, 50
    require ext_code.size(address(stor1[arg1].field_0))
    call address(stor1[arg1].field_0).0xfc16d377 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if arg1 >= stor1.length:
            revert with 0, 50
        if address(stor1[arg1].field_768) != msg.sender:
            revert with 0, '!owner'
    if arg1 < stor1.length:
        if stor1.length < 1:
            revert with 0, 17
        if stor1.length - 1 >= stor1.length:
            revert with 0, 50
        if arg1 >= stor1.length:
            revert with 0, 50
        address(stor1[arg1].field_0) = address(stor1[stor1.length - 1].field_0)
        if not bool(stor1[stor1.length - 1].field_256):
            if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                revert with 0, 34
            if bool(stor1[arg1].field_256):
                if bool(stor1[arg1].field_256) == uint255(stor1[arg1].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not stor1[stor1.length - 1].field_257 % 128:
                    stor1[arg1].field_256 = 0
                    idx = 0
                    while (uint255(stor1[arg1].field_256) * 0.5) + 31 / 32 > idx:
                        stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor1[arg1].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                    s = 0
                    idx = 0
                    while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                        stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                    while (uint255(stor1[arg1].field_256) * 0.5) + 31 / 32 > idx:
                        stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor1[arg1].field_256) == stor1[arg1].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor1[stor1.length - 1].field_257 % 128:
                    stor1[arg1].field_256 = 0
                    idx = 0
                    while stor1[arg1].field_257 % 128 + 31 / 32 > idx:
                        stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor1[arg1].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                    s = 0
                    idx = 0
                    while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                        stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                    while stor1[arg1].field_257 % 128 + 31 / 32 > idx:
                        stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                revert with 0, 34
            if bool(stor1[arg1].field_256):
                if bool(stor1[arg1].field_256) == uint255(stor1[arg1].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not uint255(stor1[stor1.length - 1].field_256) * 0.5:
                    stor1[arg1].field_256 = 0
                    idx = 0
                    while (uint255(stor1[arg1].field_256) * 0.5) + 31 / 32 > idx:
                        stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if 31 >= uint255(stor1[stor1.length - 1].field_256) * 0.5:
                        stor1[arg1].field_256 = stor1[stor1.length - 1].field_256
                        idx = 0
                        while (uint255(stor1[arg1].field_256) * 0.5) + 31 / 32 > idx:
                            stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor1[arg1].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                        if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                            idx = 0
                            while (uint255(stor1[arg1].field_256) * 0.5) + 31 / 32 > idx:
                                stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                            while (uint255(stor1[arg1].field_256) * 0.5) + 31 / 32 > idx:
                                stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                idx = idx + 1
                                continue 
            else:
                if bool(stor1[arg1].field_256) == stor1[arg1].field_257 % 128 < 32:
                    revert with 0, 34
                if not uint255(stor1[stor1.length - 1].field_256) * 0.5:
                    stor1[arg1].field_256 = 0
                    idx = 0
                    while stor1[arg1].field_257 % 128 + 31 / 32 > idx:
                        stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if 31 >= uint255(stor1[stor1.length - 1].field_256) * 0.5:
                        stor1[arg1].field_256 = stor1[stor1.length - 1].field_256
                        idx = 0
                        while stor1[arg1].field_257 % 128 + 31 / 32 > idx:
                            stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor1[arg1].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                        if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                            idx = 0
                            while stor1[arg1].field_257 % 128 + 31 / 32 > idx:
                                stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                            while stor1[arg1].field_257 % 128 + 31 / 32 > idx:
                                stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                idx = idx + 1
                                continue 
        address(stor1[arg1].field_512) = address(stor1[stor1.length - 1].field_512)
        address(stor1[arg1].field_768) = address(stor1[stor1.length - 1].field_768)
        if not stor1.length:
            revert with 0, 49
        address(stor1[stor1.length - 1].field_0) = 0
        if bool(stor1[stor1.length - 1].field_256):
            if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                revert with 0, 34
            stor1[stor1.length - 1].field_256 = 0
            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                idx = 0
                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                revert with 0, 34
            stor1[stor1.length - 1].field_256 = 0
            if 31 < stor1[stor1.length - 1].field_257 % 128:
                idx = 0
                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        address(stor1[stor1.length - 1].field_512) = 0
        address(stor1[stor1.length - 1].field_768) = 0
        stor1.length--
}

function end(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor1.length:
        revert with 0, 50
    if owner != msg.sender:
        if address(stor1[arg1].field_768) != msg.sender:
            revert with 0, '!owner'
    require ext_code.size(address(stor1[arg1].field_0))
    call address(stor1[arg1].field_0).end(address arg1) with:
         gas gas_remaining wei
        args address(stor1[arg1].field_512)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        if arg1 >= stor1.length:
            revert with 0, 50
        if address(stor1[arg1].field_768) != msg.sender:
            revert with 0, '!owner'
    if arg1 < stor1.length:
        if stor1.length < 1:
            revert with 0, 17
        if stor1.length - 1 >= stor1.length:
            revert with 0, 50
        if arg1 >= stor1.length:
            revert with 0, 50
        address(stor1[arg1].field_0) = address(stor1[stor1.length - 1].field_0)
        if not bool(stor1[stor1.length - 1].field_256):
            if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                revert with 0, 34
            if bool(stor1[arg1].field_256):
                if bool(stor1[arg1].field_256) == uint255(stor1[arg1].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not stor1[stor1.length - 1].field_257 % 128:
                    stor1[arg1].field_256 = 0
                    idx = 0
                    while (uint255(stor1[arg1].field_256) * 0.5) + 31 / 32 > idx:
                        stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor1[arg1].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                    s = 0
                    idx = 0
                    while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                        stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                    while (uint255(stor1[arg1].field_256) * 0.5) + 31 / 32 > idx:
                        stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor1[arg1].field_256) == stor1[arg1].field_257 % 128 < 32:
                    revert with 0, 34
                if not stor1[stor1.length - 1].field_257 % 128:
                    stor1[arg1].field_256 = 0
                    idx = 0
                    while stor1[arg1].field_257 % 128 + 31 / 32 > idx:
                        stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor1[arg1].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                    s = 0
                    idx = 0
                    while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                        stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                    while stor1[arg1].field_257 % 128 + 31 / 32 > idx:
                        stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                revert with 0, 34
            if bool(stor1[arg1].field_256):
                if bool(stor1[arg1].field_256) == uint255(stor1[arg1].field_256) * 0.5 < 32:
                    revert with 0, 34
                if not uint255(stor1[stor1.length - 1].field_256) * 0.5:
                    stor1[arg1].field_256 = 0
                    idx = 0
                    while (uint255(stor1[arg1].field_256) * 0.5) + 31 / 32 > idx:
                        stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if 31 >= uint255(stor1[stor1.length - 1].field_256) * 0.5:
                        stor1[arg1].field_256 = stor1[stor1.length - 1].field_256
                        idx = 0
                        while (uint255(stor1[arg1].field_256) * 0.5) + 31 / 32 > idx:
                            stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor1[arg1].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                        if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                            idx = 0
                            while (uint255(stor1[arg1].field_256) * 0.5) + 31 / 32 > idx:
                                stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                            while (uint255(stor1[arg1].field_256) * 0.5) + 31 / 32 > idx:
                                stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                idx = idx + 1
                                continue 
            else:
                if bool(stor1[arg1].field_256) == stor1[arg1].field_257 % 128 < 32:
                    revert with 0, 34
                if not uint255(stor1[stor1.length - 1].field_256) * 0.5:
                    stor1[arg1].field_256 = 0
                    idx = 0
                    while stor1[arg1].field_257 % 128 + 31 / 32 > idx:
                        stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if 31 >= uint255(stor1[stor1.length - 1].field_256) * 0.5:
                        stor1[arg1].field_256 = stor1[stor1.length - 1].field_256
                        idx = 0
                        while stor1[arg1].field_257 % 128 + 31 / 32 > idx:
                            stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        stor1[arg1].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                        if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                            idx = 0
                            while stor1[arg1].field_257 % 128 + 31 / 32 > idx:
                                stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 0
                            while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                            while stor1[arg1].field_257 % 128 + 31 / 32 > idx:
                                stor[idx + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                idx = idx + 1
                                continue 
        address(stor1[arg1].field_512) = address(stor1[stor1.length - 1].field_512)
        address(stor1[arg1].field_768) = address(stor1[stor1.length - 1].field_768)
        if not stor1.length:
            revert with 0, 49
        address(stor1[stor1.length - 1].field_0) = 0
        if bool(stor1[stor1.length - 1].field_256):
            if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                revert with 0, 34
            stor1[stor1.length - 1].field_256 = 0
            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                idx = 0
                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                revert with 0, 34
            stor1[stor1.length - 1].field_256 = 0
            if 31 < stor1[stor1.length - 1].field_257 % 128:
                idx = 0
                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        address(stor1[stor1.length - 1].field_512) = 0
        address(stor1[stor1.length - 1].field_768) = 0
        stor1.length--
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xb5833d7b(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x5860ee3c(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x1c1115c1(?????) > uint32(call.func_hash) >> 224:
                    if poolLength() == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return stor1.length
                    else:
                        if end(uint256 arg1) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if msg.sender == owner:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    require ext_code.size(address(stor1[cd[4]].field_0))
                                    call address(stor1[cd[4]].field_0).end(address arg1) with:
                                         gas gas_remaining wei
                                        args address(stor1[cd[4]].field_512)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if msg.sender == owner:
                                            if cd[4] < stor1.length:
                                                if stor1.length < 1:
                                                    revert with 0, 17
                                                else:
                                                    if stor1.length - 1 >= stor1.length:
                                                        revert with 0, 50
                                                    else:
                                                        if cd[4] >= stor1.length:
                                                            revert with 0, 50
                                                        else:
                                                            address(stor1[cd[4]].field_0) = address(stor1[stor1.length - 1].field_0)
                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                    revert with 0, 34
                                                                else:
                                                                    if bool(stor1[cd[4]].field_256):
                                                                        if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                    stor1[cd[4]].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                                                                                    if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                                                                                        idx = 0
                                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                    else:
                                                                                        s = 0
                                                                                        idx = 0
                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                            s = s + 1
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                else:
                                                                                    stor1[cd[4]].field_256 = stor1[stor1.length - 1].field_256
                                                                                    idx = 0
                                                                                    while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                        stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                    address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                    if not stor1.length:
                                                                                        revert with 0, 49
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_0) = 0
                                                                                        if bool(stor1[stor1.length - 1].field_256):
                                                                                            if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                revert with 0, 34
                                                                                            else:
                                                                                                stor1[stor1.length - 1].field_256 = 0
                                                                                                if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                    idx = 0
                                                                                                    while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                        stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                                        else:
                                                                                            if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                revert with 0, 34
                                                                                            else:
                                                                                                stor1[stor1.length - 1].field_256 = 0
                                                                                                if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                    idx = 0
                                                                                                    while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                        stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                            else:
                                                                                stor1[cd[4]].field_256 = 0
                                                                                idx = 0
                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                    else:
                                                                        if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                    stor1[cd[4]].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                                                                                    if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                                                                                        idx = 0
                                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                    else:
                                                                                        s = 0
                                                                                        idx = 0
                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                            s = s + 1
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                else:
                                                                                    stor1[cd[4]].field_256 = stor1[stor1.length - 1].field_256
                                                                                    idx = 0
                                                                                    while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                        stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                    address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                    if not stor1.length:
                                                                                        revert with 0, 49
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_0) = 0
                                                                                        if bool(stor1[stor1.length - 1].field_256):
                                                                                            if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                revert with 0, 34
                                                                                            else:
                                                                                                stor1[stor1.length - 1].field_256 = 0
                                                                                                if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                    idx = 0
                                                                                                    while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                        stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                                        else:
                                                                                            if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                revert with 0, 34
                                                                                            else:
                                                                                                stor1[stor1.length - 1].field_256 = 0
                                                                                                if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                    idx = 0
                                                                                                    while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                        stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                            else:
                                                                                stor1[cd[4]].field_256 = 0
                                                                                idx = 0
                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                            else:
                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                    revert with 0, 34
                                                                else:
                                                                    if bool(stor1[cd[4]].field_256):
                                                                        if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if stor1[stor1.length - 1].field_257 % 128:
                                                                                stor1[cd[4]].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                                                                                s = 0
                                                                                idx = 0
                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                    stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                    s = s + 1
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                            else:
                                                                                stor1[cd[4]].field_256 = 0
                                                                                idx = 0
                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                    else:
                                                                        if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if stor1[stor1.length - 1].field_257 % 128:
                                                                                stor1[cd[4]].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                                                                                s = 0
                                                                                idx = 0
                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                    stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                    s = s + 1
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                            else:
                                                                                stor1[cd[4]].field_256 = 0
                                                                                idx = 0
                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                            else:
                                        else:
                                            if cd[4] >= stor1.length:
                                                revert with 0, 50
                                            else:
                                                if address(stor1[cd[4]].field_768) != msg.sender:
                                                    revert with 0, '!owner'
                                                else:
                                                    if cd[4] < stor1.length:
                                                        if stor1.length < 1:
                                                            revert with 0, 17
                                                        else:
                                                            if stor1.length - 1 >= stor1.length:
                                                                revert with 0, 50
                                                            else:
                                                                if cd[4] >= stor1.length:
                                                                    revert with 0, 50
                                                                else:
                                                                    address(stor1[cd[4]].field_0) = address(stor1[stor1.length - 1].field_0)
                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if bool(stor1[cd[4]].field_256):
                                                                                if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    if uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                        if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                            stor1[cd[4]].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                                                                                            if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                                                                                                idx = 0
                                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                if not stor1.length:
                                                                                                    revert with 0, 49
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                idx = 0
                                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                    else:
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                idx = 0
                                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                            else:
                                                                                                s = 0
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                                    s = s + 1
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                if not stor1.length:
                                                                                                    revert with 0, 49
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                idx = 0
                                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                    else:
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                idx = 0
                                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                        else:
                                                                                            stor1[cd[4]].field_256 = stor1[stor1.length - 1].field_256
                                                                                            idx = 0
                                                                                            while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                idx = idx + 1
                                                                                                continue 
                                                                                            address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                            address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                            if not stor1.length:
                                                                                                revert with 0, 49
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_0) = 0
                                                                                                if bool(stor1[stor1.length - 1].field_256):
                                                                                                    if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                        revert with 0, 34
                                                                                                    else:
                                                                                                        stor1[stor1.length - 1].field_256 = 0
                                                                                                        if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                            idx = 0
                                                                                                            while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                                        else:
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                                else:
                                                                                                    if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                        revert with 0, 34
                                                                                                    else:
                                                                                                        stor1[stor1.length - 1].field_256 = 0
                                                                                                        if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                            idx = 0
                                                                                                            while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                                        else:
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                    else:
                                                                                        stor1[cd[4]].field_256 = 0
                                                                                        idx = 0
                                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                            else:
                                                                                if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    if uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                        if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                            stor1[cd[4]].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                                                                                            if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                                                                                                idx = 0
                                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                if not stor1.length:
                                                                                                    revert with 0, 49
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                idx = 0
                                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                    else:
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                idx = 0
                                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                            else:
                                                                                                s = 0
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                                    s = s + 1
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                if not stor1.length:
                                                                                                    revert with 0, 49
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                idx = 0
                                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                    else:
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                idx = 0
                                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                        else:
                                                                                            stor1[cd[4]].field_256 = stor1[stor1.length - 1].field_256
                                                                                            idx = 0
                                                                                            while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                                stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                idx = idx + 1
                                                                                                continue 
                                                                                            address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                            address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                            if not stor1.length:
                                                                                                revert with 0, 49
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_0) = 0
                                                                                                if bool(stor1[stor1.length - 1].field_256):
                                                                                                    if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                        revert with 0, 34
                                                                                                    else:
                                                                                                        stor1[stor1.length - 1].field_256 = 0
                                                                                                        if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                            idx = 0
                                                                                                            while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                                        else:
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                                else:
                                                                                                    if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                        revert with 0, 34
                                                                                                    else:
                                                                                                        stor1[stor1.length - 1].field_256 = 0
                                                                                                        if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                            idx = 0
                                                                                                            while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                                        else:
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                    else:
                                                                                        stor1[cd[4]].field_256 = 0
                                                                                        idx = 0
                                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                    else:
                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if bool(stor1[cd[4]].field_256):
                                                                                if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    if stor1[stor1.length - 1].field_257 % 128:
                                                                                        stor1[cd[4]].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                                                                                        s = 0
                                                                                        idx = 0
                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                            s = s + 1
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                    else:
                                                                                        stor1[cd[4]].field_256 = 0
                                                                                        idx = 0
                                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                            else:
                                                                                if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    if stor1[stor1.length - 1].field_257 % 128:
                                                                                        stor1[cd[4]].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                                                                                        s = 0
                                                                                        idx = 0
                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                            s = s + 1
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                    else:
                                                                                        stor1[cd[4]].field_256 = 0
                                                                                        idx = 0
                                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                    else:
                            else:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    if address(stor1[cd[4]].field_768) != msg.sender:
                                        revert with 0, '!owner'
                                    else:
                                        if cd[4] >= stor1.length:
                                            revert with 0, 50
                                        else:
                                            require ext_code.size(address(stor1[cd[4]].field_0))
                                            call address(stor1[cd[4]].field_0).end(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(stor1[cd[4]].field_512)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if msg.sender == owner:
                                                    if cd[4] < stor1.length:
                                                        if stor1.length < 1:
                                                            revert with 0, 17
                                                        else:
                                                            if stor1.length - 1 >= stor1.length:
                                                                revert with 0, 50
                                                            else:
                                                                if cd[4] >= stor1.length:
                                                                    revert with 0, 50
                                                                else:
                                                                    address(stor1[cd[4]].field_0) = address(stor1[stor1.length - 1].field_0)
                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if bool(stor1[cd[4]].field_256):
                                                                                if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    if uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                        if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                            stor1[cd[4]].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                                                                                            if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                                                                                                idx = 0
                                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                if not stor1.length:
                                                                                                    revert with 0, 49
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                idx = 0
                                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                    else:
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                idx = 0
                                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                            else:
                                                                                                s = 0
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                                    s = s + 1
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                if not stor1.length:
                                                                                                    revert with 0, 49
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                idx = 0
                                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                    else:
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                idx = 0
                                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                        else:
                                                                                            stor1[cd[4]].field_256 = stor1[stor1.length - 1].field_256
                                                                                            idx = 0
                                                                                            while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                idx = idx + 1
                                                                                                continue 
                                                                                            address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                            address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                            if not stor1.length:
                                                                                                revert with 0, 49
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_0) = 0
                                                                                                if bool(stor1[stor1.length - 1].field_256):
                                                                                                    if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                        revert with 0, 34
                                                                                                    else:
                                                                                                        stor1[stor1.length - 1].field_256 = 0
                                                                                                        if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                            idx = 0
                                                                                                            while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                                        else:
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                                else:
                                                                                                    if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                        revert with 0, 34
                                                                                                    else:
                                                                                                        stor1[stor1.length - 1].field_256 = 0
                                                                                                        if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                            idx = 0
                                                                                                            while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                                        else:
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                    else:
                                                                                        stor1[cd[4]].field_256 = 0
                                                                                        idx = 0
                                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                            else:
                                                                                if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    if uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                        if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                            stor1[cd[4]].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                                                                                            if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                                                                                                idx = 0
                                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                if not stor1.length:
                                                                                                    revert with 0, 49
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                idx = 0
                                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                    else:
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                idx = 0
                                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                            else:
                                                                                                s = 0
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                                    s = s + 1
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                if not stor1.length:
                                                                                                    revert with 0, 49
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                idx = 0
                                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                    else:
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                idx = 0
                                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                        else:
                                                                                            stor1[cd[4]].field_256 = stor1[stor1.length - 1].field_256
                                                                                            idx = 0
                                                                                            while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                                stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                idx = idx + 1
                                                                                                continue 
                                                                                            address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                            address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                            if not stor1.length:
                                                                                                revert with 0, 49
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_0) = 0
                                                                                                if bool(stor1[stor1.length - 1].field_256):
                                                                                                    if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                        revert with 0, 34
                                                                                                    else:
                                                                                                        stor1[stor1.length - 1].field_256 = 0
                                                                                                        if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                            idx = 0
                                                                                                            while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                                        else:
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                                else:
                                                                                                    if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                        revert with 0, 34
                                                                                                    else:
                                                                                                        stor1[stor1.length - 1].field_256 = 0
                                                                                                        if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                            idx = 0
                                                                                                            while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                                        else:
                                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                                            stor1.length--
                                                                                    else:
                                                                                        stor1[cd[4]].field_256 = 0
                                                                                        idx = 0
                                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                    else:
                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if bool(stor1[cd[4]].field_256):
                                                                                if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    if stor1[stor1.length - 1].field_257 % 128:
                                                                                        stor1[cd[4]].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                                                                                        s = 0
                                                                                        idx = 0
                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                            s = s + 1
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                    else:
                                                                                        stor1[cd[4]].field_256 = 0
                                                                                        idx = 0
                                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                            else:
                                                                                if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    if stor1[stor1.length - 1].field_257 % 128:
                                                                                        stor1[cd[4]].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                                                                                        s = 0
                                                                                        idx = 0
                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                            s = s + 1
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                    else:
                                                                                        stor1[cd[4]].field_256 = 0
                                                                                        idx = 0
                                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                    else:
                                                else:
                                                    if cd[4] >= stor1.length:
                                                        revert with 0, 50
                                                    else:
                                                        if address(stor1[cd[4]].field_768) != msg.sender:
                                                            revert with 0, '!owner'
                                                        else:
                                                            if cd[4] < stor1.length:
                                                                if stor1.length < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    if stor1.length - 1 >= stor1.length:
                                                                        revert with 0, 50
                                                                    else:
                                                                        if cd[4] >= stor1.length:
                                                                            revert with 0, 50
                                                                        else:
                                                                            address(stor1[cd[4]].field_0) = address(stor1[stor1.length - 1].field_0)
                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    if bool(stor1[cd[4]].field_256):
                                                                                        if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            if uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                    stor1[cd[4]].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                                                                                                    if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                        if not stor1.length:
                                                                                                            revert with 0, 49
                                                                                                        else:
                                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                                    revert with 0, 34
                                                                                                                else:
                                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                        idx = 0
                                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                            idx = idx + 1
                                                                                                                            continue 
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                                    else:
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                            else:
                                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                                    revert with 0, 34
                                                                                                                else:
                                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                        idx = 0
                                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                            idx = idx + 1
                                                                                                                            continue 
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                                    else:
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        s = 0
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                                            s = s + 1
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                                                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                        if not stor1.length:
                                                                                                            revert with 0, 49
                                                                                                        else:
                                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                                    revert with 0, 34
                                                                                                                else:
                                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                        idx = 0
                                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                            idx = idx + 1
                                                                                                                            continue 
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                                    else:
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                            else:
                                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                                    revert with 0, 34
                                                                                                                else:
                                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                        idx = 0
                                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                            idx = idx + 1
                                                                                                                            continue 
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                                    else:
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                else:
                                                                                                    stor1[cd[4]].field_256 = stor1[stor1.length - 1].field_256
                                                                                                    idx = 0
                                                                                                    while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                        stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                    address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                    address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                    if not stor1.length:
                                                                                                        revert with 0, 49
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_0) = 0
                                                                                                        if bool(stor1[stor1.length - 1].field_256):
                                                                                                            if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                                revert with 0, 34
                                                                                                            else:
                                                                                                                stor1[stor1.length - 1].field_256 = 0
                                                                                                                if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                    idx = 0
                                                                                                                    while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                        stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                        idx = idx + 1
                                                                                                                        continue 
                                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                    stor1.length--
                                                                                                                else:
                                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                    stor1.length--
                                                                                                        else:
                                                                                                            if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                                revert with 0, 34
                                                                                                            else:
                                                                                                                stor1[stor1.length - 1].field_256 = 0
                                                                                                                if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                    idx = 0
                                                                                                                    while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                        stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                        idx = idx + 1
                                                                                                                        continue 
                                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                    stor1.length--
                                                                                                                else:
                                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                    stor1.length--
                                                                                            else:
                                                                                                stor1[cd[4]].field_256 = 0
                                                                                                idx = 0
                                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                if not stor1.length:
                                                                                                    revert with 0, 49
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                idx = 0
                                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                    else:
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                idx = 0
                                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            if uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                    stor1[cd[4]].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                                                                                                    if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                                                                                                        idx = 0
                                                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                        if not stor1.length:
                                                                                                            revert with 0, 49
                                                                                                        else:
                                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                                    revert with 0, 34
                                                                                                                else:
                                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                        idx = 0
                                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                            idx = idx + 1
                                                                                                                            continue 
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                                    else:
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                            else:
                                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                                    revert with 0, 34
                                                                                                                else:
                                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                        idx = 0
                                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                            idx = idx + 1
                                                                                                                            continue 
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                                    else:
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        s = 0
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                                            s = s + 1
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                                                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                        if not stor1.length:
                                                                                                            revert with 0, 49
                                                                                                        else:
                                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                                    revert with 0, 34
                                                                                                                else:
                                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                        idx = 0
                                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                            idx = idx + 1
                                                                                                                            continue 
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                                    else:
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                            else:
                                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                                    revert with 0, 34
                                                                                                                else:
                                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                        idx = 0
                                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                            idx = idx + 1
                                                                                                                            continue 
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                                    else:
                                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                        stor1.length--
                                                                                                else:
                                                                                                    stor1[cd[4]].field_256 = stor1[stor1.length - 1].field_256
                                                                                                    idx = 0
                                                                                                    while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                                        stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                    address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                    address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                    if not stor1.length:
                                                                                                        revert with 0, 49
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_0) = 0
                                                                                                        if bool(stor1[stor1.length - 1].field_256):
                                                                                                            if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                                revert with 0, 34
                                                                                                            else:
                                                                                                                stor1[stor1.length - 1].field_256 = 0
                                                                                                                if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                    idx = 0
                                                                                                                    while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                        stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                        idx = idx + 1
                                                                                                                        continue 
                                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                    stor1.length--
                                                                                                                else:
                                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                    stor1.length--
                                                                                                        else:
                                                                                                            if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                                revert with 0, 34
                                                                                                            else:
                                                                                                                stor1[stor1.length - 1].field_256 = 0
                                                                                                                if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                    idx = 0
                                                                                                                    while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                        stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                        idx = idx + 1
                                                                                                                        continue 
                                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                    stor1.length--
                                                                                                                else:
                                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                    stor1.length--
                                                                                            else:
                                                                                                stor1[cd[4]].field_256 = 0
                                                                                                idx = 0
                                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                if not stor1.length:
                                                                                                    revert with 0, 49
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                idx = 0
                                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                    else:
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                idx = 0
                                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                            else:
                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    if bool(stor1[cd[4]].field_256):
                                                                                        if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            if stor1[stor1.length - 1].field_257 % 128:
                                                                                                stor1[cd[4]].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                                                                                                s = 0
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                                    s = s + 1
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                if not stor1.length:
                                                                                                    revert with 0, 49
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                idx = 0
                                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                    else:
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                idx = 0
                                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                            else:
                                                                                                stor1[cd[4]].field_256 = 0
                                                                                                idx = 0
                                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                if not stor1.length:
                                                                                                    revert with 0, 49
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                idx = 0
                                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                    else:
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                idx = 0
                                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            if stor1[stor1.length - 1].field_257 % 128:
                                                                                                stor1[cd[4]].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                                                                                                s = 0
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                                    s = s + 1
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                if not stor1.length:
                                                                                                    revert with 0, 49
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                idx = 0
                                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                    else:
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                idx = 0
                                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                            else:
                                                                                                stor1[cd[4]].field_256 = 0
                                                                                                idx = 0
                                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                                if not stor1.length:
                                                                                                    revert with 0, 49
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                                idx = 0
                                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                    else:
                                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                            revert with 0, 34
                                                                                                        else:
                                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                                idx = 0
                                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                                    idx = idx + 1
                                                                                                                    continue 
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                                                                            else:
                                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                                stor1.length--
                                                            else:
                        else:
                            require unknown_0x1526fe27(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] < stor1.length
                            if bool(stor1[cd[4]].field_256):
                                if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                    revert with 0, 34
                                else:
                                    if bool(stor1[cd[4]].field_256):
                                        if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        else:
                                            if not Mask(256, -1, stor1[cd[4]].field_256):
                                                if ceil32(uint255(stor1[cd[4]].field_256) * 0.5) <= uint255(stor1[cd[4]].field_256) * 0.5:
                                                    return address(stor1[cd[4]].field_0), 
                                                           Array(len=2 * Mask(256, -1, stor1[cd[4]].field_256), data=mem[160 len ceil32(uint255(stor1[cd[4]].field_256) * 0.5)]),
                                                           address(stor1[cd[4]].field_512),
                                                           address(stor1[cd[4]].field_768)
                                                else:
                                                    return address(stor1[cd[4]].field_0), 
                                                           Array(len=2 * Mask(256, -1, stor1[cd[4]].field_256), data=mem[160 len ceil32(uint255(stor1[cd[4]].field_256) * 0.5)]),
                                                           address(stor1[cd[4]].field_512),
                                                           address(stor1[cd[4]].field_768)
                                            else:
                                                if 31 < uint255(stor1[cd[4]].field_256) * 0.5:
                                                    mem[160] = stor[sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0
                                                    idx = 160
                                                    s = 0
                                                    while (uint255(stor1[cd[4]].field_256) * 0.5) + 128 > idx:
                                                        mem[idx + 32] = stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    if ceil32(uint255(stor1[cd[4]].field_256) * 0.5) <= uint255(stor1[cd[4]].field_256) * 0.5:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=2 * Mask(256, -1, stor1[cd[4]].field_256), data=mem[160 len ceil32(uint255(stor1[cd[4]].field_256) * 0.5)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                                                    else:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=2 * Mask(256, -1, stor1[cd[4]].field_256), data=mem[160 len ceil32(uint255(stor1[cd[4]].field_256) * 0.5)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                                                else:
                                                    mem[160] = 256 * Mask(248, 0, stor1[cd[4]].field_264)
                                                    if ceil32(uint255(stor1[cd[4]].field_256) * 0.5) <= uint255(stor1[cd[4]].field_256) * 0.5:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=2 * Mask(256, -1, stor1[cd[4]].field_256), data=mem[160 len ceil32(uint255(stor1[cd[4]].field_256) * 0.5)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                                                    else:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=2 * Mask(256, -1, stor1[cd[4]].field_256), data=mem[160 len ceil32(uint255(stor1[cd[4]].field_256) * 0.5)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                                    else:
                                        if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        else:
                                            if not stor1[cd[4]].field_257 % 128:
                                                if ceil32(uint255(stor1[cd[4]].field_256) * 0.5) <= uint255(stor1[cd[4]].field_256) * 0.5:
                                                    return address(stor1[cd[4]].field_0), 
                                                           Array(len=2 * Mask(256, -1, stor1[cd[4]].field_256), data=mem[160 len ceil32(uint255(stor1[cd[4]].field_256) * 0.5)]),
                                                           address(stor1[cd[4]].field_512),
                                                           address(stor1[cd[4]].field_768)
                                                else:
                                                    return address(stor1[cd[4]].field_0), 
                                                           Array(len=2 * Mask(256, -1, stor1[cd[4]].field_256), data=mem[160 len ceil32(uint255(stor1[cd[4]].field_256) * 0.5)]),
                                                           address(stor1[cd[4]].field_512),
                                                           address(stor1[cd[4]].field_768)
                                            else:
                                                if 31 < stor1[cd[4]].field_257 % 128:
                                                    mem[160] = stor[sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0
                                                    idx = 160
                                                    s = 0
                                                    while stor1[cd[4]].field_257 % 128 + 128 > idx:
                                                        mem[idx + 32] = stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    if ceil32(uint255(stor1[cd[4]].field_256) * 0.5) <= uint255(stor1[cd[4]].field_256) * 0.5:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=2 * Mask(256, -1, stor1[cd[4]].field_256), data=mem[160 len ceil32(uint255(stor1[cd[4]].field_256) * 0.5)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                                                    else:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=2 * Mask(256, -1, stor1[cd[4]].field_256), data=mem[160 len ceil32(uint255(stor1[cd[4]].field_256) * 0.5)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                                                else:
                                                    mem[160] = 256 * Mask(248, 0, stor1[cd[4]].field_264)
                                                    if ceil32(uint255(stor1[cd[4]].field_256) * 0.5) <= uint255(stor1[cd[4]].field_256) * 0.5:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=2 * Mask(256, -1, stor1[cd[4]].field_256), data=mem[160 len ceil32(uint255(stor1[cd[4]].field_256) * 0.5)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                                                    else:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=2 * Mask(256, -1, stor1[cd[4]].field_256), data=mem[160 len ceil32(uint255(stor1[cd[4]].field_256) * 0.5)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                            else:
                                if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                    revert with 0, 34
                                else:
                                    if bool(stor1[cd[4]].field_256):
                                        if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                            revert with 0, 34
                                        else:
                                            if not Mask(256, -1, stor1[cd[4]].field_256):
                                                if ceil32(stor1[cd[4]].field_257 % 128) <= stor1[cd[4]].field_257 % 128:
                                                    return address(stor1[cd[4]].field_0), 
                                                           Array(len=stor1[cd[4]].field_256 % 128, data=mem[160 len ceil32(stor1[cd[4]].field_257 % 128)]),
                                                           address(stor1[cd[4]].field_512),
                                                           address(stor1[cd[4]].field_768)
                                                else:
                                                    return address(stor1[cd[4]].field_0), 
                                                           Array(len=stor1[cd[4]].field_256 % 128, data=mem[160 len ceil32(stor1[cd[4]].field_257 % 128)]),
                                                           address(stor1[cd[4]].field_512),
                                                           address(stor1[cd[4]].field_768)
                                            else:
                                                if 31 < uint255(stor1[cd[4]].field_256) * 0.5:
                                                    mem[160] = stor[sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0
                                                    idx = 160
                                                    s = 0
                                                    while (uint255(stor1[cd[4]].field_256) * 0.5) + 128 > idx:
                                                        mem[idx + 32] = stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    if ceil32(stor1[cd[4]].field_257 % 128) <= stor1[cd[4]].field_257 % 128:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=stor1[cd[4]].field_256 % 128, data=mem[160 len ceil32(stor1[cd[4]].field_257 % 128)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                                                    else:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=stor1[cd[4]].field_256 % 128, data=mem[160 len ceil32(stor1[cd[4]].field_257 % 128)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                                                else:
                                                    mem[160] = 256 * Mask(248, 0, stor1[cd[4]].field_264)
                                                    if ceil32(stor1[cd[4]].field_257 % 128) <= stor1[cd[4]].field_257 % 128:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=stor1[cd[4]].field_256 % 128, data=mem[160 len ceil32(stor1[cd[4]].field_257 % 128)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                                                    else:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=stor1[cd[4]].field_256 % 128, data=mem[160 len ceil32(stor1[cd[4]].field_257 % 128)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                                    else:
                                        if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                            revert with 0, 34
                                        else:
                                            if not stor1[cd[4]].field_257 % 128:
                                                if ceil32(stor1[cd[4]].field_257 % 128) <= stor1[cd[4]].field_257 % 128:
                                                    return address(stor1[cd[4]].field_0), 
                                                           Array(len=stor1[cd[4]].field_256 % 128, data=mem[160 len ceil32(stor1[cd[4]].field_257 % 128)]),
                                                           address(stor1[cd[4]].field_512),
                                                           address(stor1[cd[4]].field_768)
                                                else:
                                                    return address(stor1[cd[4]].field_0), 
                                                           Array(len=stor1[cd[4]].field_256 % 128, data=mem[160 len ceil32(stor1[cd[4]].field_257 % 128)]),
                                                           address(stor1[cd[4]].field_512),
                                                           address(stor1[cd[4]].field_768)
                                            else:
                                                if 31 < stor1[cd[4]].field_257 % 128:
                                                    mem[160] = stor[sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0
                                                    idx = 160
                                                    s = 0
                                                    while stor1[cd[4]].field_257 % 128 + 128 > idx:
                                                        mem[idx + 32] = stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_256
                                                        idx = idx + 32
                                                        s = s + 1
                                                        continue 
                                                    if ceil32(stor1[cd[4]].field_257 % 128) <= stor1[cd[4]].field_257 % 128:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=stor1[cd[4]].field_256 % 128, data=mem[160 len ceil32(stor1[cd[4]].field_257 % 128)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                                                    else:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=stor1[cd[4]].field_256 % 128, data=mem[160 len ceil32(stor1[cd[4]].field_257 % 128)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                                                else:
                                                    mem[160] = 256 * Mask(248, 0, stor1[cd[4]].field_264)
                                                    if ceil32(stor1[cd[4]].field_257 % 128) <= stor1[cd[4]].field_257 % 128:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=stor1[cd[4]].field_256 % 128, data=mem[160 len ceil32(stor1[cd[4]].field_257 % 128)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                                                    else:
                                                        return address(stor1[cd[4]].field_0), 
                                                               Array(len=stor1[cd[4]].field_256 % 128, data=mem[160 len ceil32(stor1[cd[4]].field_257 % 128)]),
                                                               address(stor1[cd[4]].field_512),
                                                               address(stor1[cd[4]].field_768)
                else:
                    if unknown_0x1c1115c1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] <= test266151307()
                        require cd[36] + 35 < calldata.size
                        if ('cd', 36).length > test266151307():
                            revert with 0, 65
                        else:
                            if ceil32(32 * ('cd', 36).length) + 129 < 128 or ceil32(32 * ('cd', 36).length) + 129 > test266151307():
                                revert with 0, 65
                            else:
                                mem[128] = ('cd', 36).length
                                require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
                                s = cd[36] + 36
                                t = 160
                                u = 32 * ('cd', 36).length
                                idx = 0
                                while idx < ('cd', 36).length:
                                    require cd[s] == address(cd[s])
                                    mem[t] = cd[s]
                                    s = s + 32
                                    t = t + 32
                                    u = cd[s]
                                    idx = idx + 1
                                    continue 
                                if msg.sender == owner:
                                    if cd[4] >= stor1.length:
                                        revert with 0, 50
                                    else:
                                        mem[ceil32(32 * ('cd', 36).length) + 129] = 0xe0ad64200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(32 * ('cd', 36).length) + 133] = 32
                                        mem[ceil32(32 * ('cd', 36).length) + 165] = ('cd', 36).length
                                        idx = 0
                                        s = ceil32(32 * ('cd', 36).length) + 197
                                        t = 160
                                        while idx < ('cd', 36).length:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(stor1[cd[4]].field_0))
                                        call address(stor1[cd[4]].field_0).0xe0ad642 with:
                                             gas gas_remaining wei
                                            args Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 36).length) + 197 len 32 * ('cd', 36).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                else:
                                    if cd[4] >= stor1.length:
                                        revert with 0, 50
                                    else:
                                        if address(stor1[cd[4]].field_768) != msg.sender:
                                            revert with 0, '!owner'
                                        else:
                                            if cd[4] >= stor1.length:
                                                revert with 0, 50
                                            else:
                                                mem[ceil32(32 * ('cd', 36).length) + 129] = 0xe0ad64200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(32 * ('cd', 36).length) + 133] = 32
                                                mem[ceil32(32 * ('cd', 36).length) + 165] = ('cd', 36).length
                                                idx = 0
                                                s = ceil32(32 * ('cd', 36).length) + 197
                                                t = 160
                                                while idx < ('cd', 36).length:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(stor1[cd[4]].field_0))
                                                call address(stor1[cd[4]].field_0).0xe0ad642 with:
                                                     gas gas_remaining wei
                                                    args Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 36).length) + 197 len 32 * ('cd', 36).length])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                    else:
                        if unknown_0x50aeefd7(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 160
                            require cd[36] == address(cd[36])
                            require cd[68] <= test266151307()
                            require cd[68] + 35 < calldata.size
                            if ('cd', 68).length > test266151307():
                                revert with 0, 65
                            else:
                                if ceil32(ceil32(('cd', 68).length)) + 129 < 128 or ceil32(ceil32(('cd', 68).length)) + 129 > test266151307():
                                    revert with 0, 65
                                else:
                                    require cd[68] + ('cd', 68).length + 36 <= calldata.size
                                    require cd[100] == address(cd[100])
                                    require cd[132] == address(cd[132])
                                    if msg.sender == owner:
                                        if cd[4] >= stor1.length:
                                            revert with 0, 50
                                        else:
                                            address(stor1[cd[4]].field_0) = address(cd[36])
                                            if bool(stor1[cd[4]].field_256):
                                                if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                                    revert with 0, 34
                                                else:
                                                    if ('cd', 68).length:
                                                        stor[sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)][].field_0 = Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                                        if cd[4] >= stor1.length:
                                                            revert with 0, 50
                                                        else:
                                                            address(stor1[cd[4]].field_512) = address(cd[100])
                                                            address(stor1[cd[4]].field_768) = address(cd[132])
                                                    else:
                                                        stor1[cd[4]].field_256 = 0
                                                        idx = 0
                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                        if cd[4] >= stor1.length:
                                                            revert with 0, 50
                                                        else:
                                                            address(stor1[cd[4]].field_512) = address(cd[100])
                                                            address(stor1[cd[4]].field_768) = address(cd[132])
                                            else:
                                                if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                                    revert with 0, 34
                                                else:
                                                    if ('cd', 68).length:
                                                        stor[sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)][].field_0 = Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                                        if cd[4] >= stor1.length:
                                                            revert with 0, 50
                                                        else:
                                                            address(stor1[cd[4]].field_512) = address(cd[100])
                                                            address(stor1[cd[4]].field_768) = address(cd[132])
                                                    else:
                                                        stor1[cd[4]].field_256 = 0
                                                        idx = 0
                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                        if cd[4] >= stor1.length:
                                                            revert with 0, 50
                                                        else:
                                                            address(stor1[cd[4]].field_512) = address(cd[100])
                                                            address(stor1[cd[4]].field_768) = address(cd[132])
                                    else:
                                        if cd[4] >= stor1.length:
                                            revert with 0, 50
                                        else:
                                            if address(stor1[cd[4]].field_768) != msg.sender:
                                                revert with 0, '!owner'
                                            else:
                                                if cd[4] >= stor1.length:
                                                    revert with 0, 50
                                                else:
                                                    address(stor1[cd[4]].field_0) = address(cd[36])
                                                    if bool(stor1[cd[4]].field_256):
                                                        if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                                            revert with 0, 34
                                                        else:
                                                            if ('cd', 68).length:
                                                                stor[sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)][].field_0 = Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                                                if cd[4] >= stor1.length:
                                                                    revert with 0, 50
                                                                else:
                                                                    address(stor1[cd[4]].field_512) = address(cd[100])
                                                                    address(stor1[cd[4]].field_768) = address(cd[132])
                                                            else:
                                                                stor1[cd[4]].field_256 = 0
                                                                idx = 0
                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                                if cd[4] >= stor1.length:
                                                                    revert with 0, 50
                                                                else:
                                                                    address(stor1[cd[4]].field_512) = address(cd[100])
                                                                    address(stor1[cd[4]].field_768) = address(cd[132])
                                                    else:
                                                        if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                                            revert with 0, 34
                                                        else:
                                                            if ('cd', 68).length:
                                                                stor[sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)][].field_0 = Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
                                                                if cd[4] >= stor1.length:
                                                                    revert with 0, 50
                                                                else:
                                                                    address(stor1[cd[4]].field_512) = address(cd[100])
                                                                    address(stor1[cd[4]].field_768) = address(cd[132])
                                                            else:
                                                                stor1[cd[4]].field_256 = 0
                                                                idx = 0
                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                    idx = idx + 1
                                                                    continue 
                                                                if cd[4] >= stor1.length:
                                                                    revert with 0, 50
                                                                else:
                                                                    address(stor1[cd[4]].field_512) = address(cd[100])
                                                                    address(stor1[cd[4]].field_768) = address(cd[132])
                        else:
                            require unknown_0x55ebedec(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if msg.sender == owner:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    require ext_code.size(address(stor1[cd[4]].field_0))
                                    staticcall address(stor1[cd[4]].field_0).wantToken() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if not ext_call.return_data[12 len 20]:
                                            revert with 0, 'want token not set'
                                        else:
                                            if cd[4] >= stor1.length:
                                                revert with 0, 50
                                            else:
                                                require ext_code.size(address(stor1[cd[4]].field_0))
                                                staticcall address(stor1[cd[4]].field_0).wantToken() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if cd[4] >= stor1.length:
                                                        revert with 0, 50
                                                    else:
                                                        require ext_code.size(address(stor1[cd[4]].field_0))
                                                        call address(stor1[cd[4]].field_0).0xf940e385 with:
                                                             gas gas_remaining wei
                                                            args address(ext_call.return_data[0]), address(stor1[cd[4]].field_512)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                            else:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    if address(stor1[cd[4]].field_768) != msg.sender:
                                        revert with 0, '!owner'
                                    else:
                                        if cd[4] >= stor1.length:
                                            revert with 0, 50
                                        else:
                                            require ext_code.size(address(stor1[cd[4]].field_0))
                                            staticcall address(stor1[cd[4]].field_0).wantToken() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if not ext_call.return_data[12 len 20]:
                                                    revert with 0, 'want token not set'
                                                else:
                                                    if cd[4] >= stor1.length:
                                                        revert with 0, 50
                                                    else:
                                                        require ext_code.size(address(stor1[cd[4]].field_0))
                                                        staticcall address(stor1[cd[4]].field_0).wantToken() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if cd[4] >= stor1.length:
                                                                revert with 0, 50
                                                            else:
                                                                require ext_code.size(address(stor1[cd[4]].field_0))
                                                                call address(stor1[cd[4]].field_0).0xf940e385 with:
                                                                     gas gas_remaining wei
                                                                    args address(ext_call.return_data[0]), address(stor1[cd[4]].field_512)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
            else:
                if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x5860ee3c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        else:
                            mem[132] = this.address
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if cd[68] > ext_call.return_data[0]:
                                    revert with 0, 'not enough balance'
                                else:
                                    mem[ceil32(return_data.size) + 164] = address(cd[36])
                                    mem[ceil32(return_data.size) + 196] = cd[68]
                                    mem[ceil32(return_data.size) + 128] = 68
                                    mem[ceil32(return_data.size) + 164 len 28] = address(cd[36]) << 64
                                    mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(return_data.size) + 228] = 32
                                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    else:
                                        if not ext_code.size(address(cd[4])):
                                            revert with 0, 'Address: call to non-contract'
                                        else:
                                            mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68], 0
                                            mem[ceil32(return_data.size) + 360] = 0
                                            call address(cd[4]) with:
                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68], 0) >> 224
                                                 gas gas_remaining wei
                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68], 0) << 288)
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    else:
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                else:
                                                    if not mem[96]:
                                                    else:
                                                        require mem[96] >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                        else:
                                            else:
                                                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                else:
                                                    if not return_data.size:
                                                    else:
                                                        require return_data.size >= 32
                                                        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                                        if not mem[ceil32(return_data.size) + 324]:
                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                        else:
                    else:
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            revert with 0, 'can't renounceOwnership'
                        else:
                            require unknown_0x8a524fa7(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if msg.sender == owner:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    require ext_code.size(address(stor1[cd[4]].field_0))
                                    call address(stor1[cd[4]].field_0).0x8456cb59 with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    if address(stor1[cd[4]].field_768) != msg.sender:
                                        revert with 0, '!owner'
                                    else:
                                        if cd[4] >= stor1.length:
                                            revert with 0, 50
                                        else:
                                            require ext_code.size(address(stor1[cd[4]].field_0))
                                            call address(stor1[cd[4]].field_0).0x8456cb59 with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                else:
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    else:
                        if unknown_0x93bb1c87(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 96
                            require cd[36] == address(cd[36])
                            if msg.sender == owner:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    require ext_code.size(address(stor1[cd[4]].field_0))
                                    call address(stor1[cd[4]].field_0).0x5860ee3c with:
                                         gas gas_remaining wei
                                        args address(cd[36]), address(stor1[cd[4]].field_512), cd[68]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    if address(stor1[cd[4]].field_768) != msg.sender:
                                        revert with 0, '!owner'
                                    else:
                                        if cd[4] >= stor1.length:
                                            revert with 0, 50
                                        else:
                                            require ext_code.size(address(stor1[cd[4]].field_0))
                                            call address(stor1[cd[4]].field_0).0x5860ee3c with:
                                                 gas gas_remaining wei
                                                args address(cd[36]), address(stor1[cd[4]].field_512), cd[68]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                        else:
                            if unknown_0x96c22012(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                idx = 0
                                while idx < stor1.length:
                                    mem[0] = 1
                                    require ext_code.size(address(stor1[idx].field_0))
                                    staticcall address(stor1[idx].field_0).isPaused() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        _1369 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1369] == bool(mem[_1369])
                                        if mem[_1369]:
                                            if idx == -1:
                                                revert with 0, 17
                                            else:
                                                idx = idx + 1
                                                continue 
                                        else:
                                            if idx >= stor1.length:
                                                revert with 0, 50
                                            else:
                                                mem[0] = 1
                                                mem[mem[64]] = 0xd389800f00000000000000000000000000000000000000000000000000000000
                                                require ext_code.size(address(stor1[idx].field_0))
                                                call address(stor1[idx].field_0).0xd389800f with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                            else:
                                require unknown_0xa38dcbd0(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if msg.sender == owner:
                                    if cd[4] < stor1.length:
                                        if stor1.length < 1:
                                            revert with 0, 17
                                        else:
                                            if stor1.length - 1 >= stor1.length:
                                                revert with 0, 50
                                            else:
                                                if cd[4] >= stor1.length:
                                                    revert with 0, 50
                                                else:
                                                    address(stor1[cd[4]].field_0) = address(stor1[stor1.length - 1].field_0)
                                                    if bool(stor1[stor1.length - 1].field_256):
                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                            revert with 0, 34
                                                        else:
                                                            if bool(stor1[cd[4]].field_256):
                                                                if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                                                    revert with 0, 34
                                                                else:
                                                                    if uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                        if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                            stor1[cd[4]].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                                                                            if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                                                                                idx = 0
                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                            else:
                                                                                s = 0
                                                                                idx = 0
                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                    stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                    s = s + 1
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                        else:
                                                                            stor1[cd[4]].field_256 = stor1[stor1.length - 1].field_256
                                                                            idx = 0
                                                                            while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                idx = idx + 1
                                                                                continue 
                                                                            address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                            address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                            if not stor1.length:
                                                                                revert with 0, 49
                                                                            else:
                                                                                address(stor1[stor1.length - 1].field_0) = 0
                                                                                if bool(stor1[stor1.length - 1].field_256):
                                                                                    if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                        revert with 0, 34
                                                                                    else:
                                                                                        stor1[stor1.length - 1].field_256 = 0
                                                                                        if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                            idx = 0
                                                                                            while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                idx = idx + 1
                                                                                                continue 
                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                            stor1.length--
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                            stor1.length--
                                                                                else:
                                                                                    if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                        revert with 0, 34
                                                                                    else:
                                                                                        stor1[stor1.length - 1].field_256 = 0
                                                                                        if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                            idx = 0
                                                                                            while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                idx = idx + 1
                                                                                                continue 
                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                            stor1.length--
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                            stor1.length--
                                                                    else:
                                                                        stor1[cd[4]].field_256 = 0
                                                                        idx = 0
                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                        if not stor1.length:
                                                                            revert with 0, 49
                                                                        else:
                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                        idx = 0
                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                            else:
                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                        idx = 0
                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                            else:
                                                                if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                                                    revert with 0, 34
                                                                else:
                                                                    if uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                        if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                            stor1[cd[4]].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                                                                            if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                                                                                idx = 0
                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                            else:
                                                                                s = 0
                                                                                idx = 0
                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                    stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                    s = s + 1
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                        else:
                                                                            stor1[cd[4]].field_256 = stor1[stor1.length - 1].field_256
                                                                            idx = 0
                                                                            while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                idx = idx + 1
                                                                                continue 
                                                                            address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                            address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                            if not stor1.length:
                                                                                revert with 0, 49
                                                                            else:
                                                                                address(stor1[stor1.length - 1].field_0) = 0
                                                                                if bool(stor1[stor1.length - 1].field_256):
                                                                                    if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                        revert with 0, 34
                                                                                    else:
                                                                                        stor1[stor1.length - 1].field_256 = 0
                                                                                        if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                            idx = 0
                                                                                            while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                idx = idx + 1
                                                                                                continue 
                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                            stor1.length--
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                            stor1.length--
                                                                                else:
                                                                                    if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                        revert with 0, 34
                                                                                    else:
                                                                                        stor1[stor1.length - 1].field_256 = 0
                                                                                        if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                            idx = 0
                                                                                            while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                idx = idx + 1
                                                                                                continue 
                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                            stor1.length--
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_512) = 0
                                                                                            address(stor1[stor1.length - 1].field_768) = 0
                                                                                            stor1.length--
                                                                    else:
                                                                        stor1[cd[4]].field_256 = 0
                                                                        idx = 0
                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                        if not stor1.length:
                                                                            revert with 0, 49
                                                                        else:
                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                        idx = 0
                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                            else:
                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                        idx = 0
                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                    else:
                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                            revert with 0, 34
                                                        else:
                                                            if bool(stor1[cd[4]].field_256):
                                                                if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                                                    revert with 0, 34
                                                                else:
                                                                    if stor1[stor1.length - 1].field_257 % 128:
                                                                        stor1[cd[4]].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                                                                        s = 0
                                                                        idx = 0
                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                            stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                            s = s + 1
                                                                            idx = idx + 1
                                                                            continue 
                                                                        idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                        if not stor1.length:
                                                                            revert with 0, 49
                                                                        else:
                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                        idx = 0
                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                            else:
                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                        idx = 0
                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                    else:
                                                                        stor1[cd[4]].field_256 = 0
                                                                        idx = 0
                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                        if not stor1.length:
                                                                            revert with 0, 49
                                                                        else:
                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                        idx = 0
                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                            else:
                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                        idx = 0
                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                            else:
                                                                if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                                                    revert with 0, 34
                                                                else:
                                                                    if stor1[stor1.length - 1].field_257 % 128:
                                                                        stor1[cd[4]].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                                                                        s = 0
                                                                        idx = 0
                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                            stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                            s = s + 1
                                                                            idx = idx + 1
                                                                            continue 
                                                                        idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                        if not stor1.length:
                                                                            revert with 0, 49
                                                                        else:
                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                        idx = 0
                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                            else:
                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                        idx = 0
                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                    else:
                                                                        stor1[cd[4]].field_256 = 0
                                                                        idx = 0
                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                            idx = idx + 1
                                                                            continue 
                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                        if not stor1.length:
                                                                            revert with 0, 49
                                                                        else:
                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                        idx = 0
                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                            else:
                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                    revert with 0, 34
                                                                                else:
                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                        idx = 0
                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                        stor1.length--
                                    else:
                                else:
                                    if cd[4] >= stor1.length:
                                        revert with 0, 50
                                    else:
                                        if address(stor1[cd[4]].field_768) != msg.sender:
                                            revert with 0, '!owner'
                                        else:
                                            if cd[4] < stor1.length:
                                                if stor1.length < 1:
                                                    revert with 0, 17
                                                else:
                                                    if stor1.length - 1 >= stor1.length:
                                                        revert with 0, 50
                                                    else:
                                                        if cd[4] >= stor1.length:
                                                            revert with 0, 50
                                                        else:
                                                            address(stor1[cd[4]].field_0) = address(stor1[stor1.length - 1].field_0)
                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                    revert with 0, 34
                                                                else:
                                                                    if bool(stor1[cd[4]].field_256):
                                                                        if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                    stor1[cd[4]].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                                                                                    if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                                                                                        idx = 0
                                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                    else:
                                                                                        s = 0
                                                                                        idx = 0
                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                            s = s + 1
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                                                                                        while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                else:
                                                                                    stor1[cd[4]].field_256 = stor1[stor1.length - 1].field_256
                                                                                    idx = 0
                                                                                    while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                        stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                    address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                    if not stor1.length:
                                                                                        revert with 0, 49
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_0) = 0
                                                                                        if bool(stor1[stor1.length - 1].field_256):
                                                                                            if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                revert with 0, 34
                                                                                            else:
                                                                                                stor1[stor1.length - 1].field_256 = 0
                                                                                                if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                    idx = 0
                                                                                                    while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                        stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                                        else:
                                                                                            if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                revert with 0, 34
                                                                                            else:
                                                                                                stor1[stor1.length - 1].field_256 = 0
                                                                                                if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                    idx = 0
                                                                                                    while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                        stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                            else:
                                                                                stor1[cd[4]].field_256 = 0
                                                                                idx = 0
                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                    else:
                                                                        if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                    stor1[cd[4]].field_256 = Mask(254, 1, stor1[stor1.length - 1].field_256) + 1
                                                                                    if not Mask(256, -1, stor1[stor1.length - 1].field_256):
                                                                                        idx = 0
                                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                    else:
                                                                                        s = 0
                                                                                        idx = 0
                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                            stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                            s = s + 1
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        idx = (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32
                                                                                        while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                            stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                            idx = idx + 1
                                                                                            continue 
                                                                                        address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                        address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                        if not stor1.length:
                                                                                            revert with 0, 49
                                                                                        else:
                                                                                            address(stor1[stor1.length - 1].field_0) = 0
                                                                                            if bool(stor1[stor1.length - 1].field_256):
                                                                                                if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                        idx = 0
                                                                                                        while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                            else:
                                                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                    revert with 0, 34
                                                                                                else:
                                                                                                    stor1[stor1.length - 1].field_256 = 0
                                                                                                    if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                        idx = 0
                                                                                                        while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                            stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                            idx = idx + 1
                                                                                                            continue 
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                                    else:
                                                                                                        address(stor1[stor1.length - 1].field_512) = 0
                                                                                                        address(stor1[stor1.length - 1].field_768) = 0
                                                                                                        stor1.length--
                                                                                else:
                                                                                    stor1[cd[4]].field_256 = stor1[stor1.length - 1].field_256
                                                                                    idx = 0
                                                                                    while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                        stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                        idx = idx + 1
                                                                                        continue 
                                                                                    address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                    address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                    if not stor1.length:
                                                                                        revert with 0, 49
                                                                                    else:
                                                                                        address(stor1[stor1.length - 1].field_0) = 0
                                                                                        if bool(stor1[stor1.length - 1].field_256):
                                                                                            if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                                revert with 0, 34
                                                                                            else:
                                                                                                stor1[stor1.length - 1].field_256 = 0
                                                                                                if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                    idx = 0
                                                                                                    while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                        stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                                        else:
                                                                                            if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                                revert with 0, 34
                                                                                            else:
                                                                                                stor1[stor1.length - 1].field_256 = 0
                                                                                                if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                    idx = 0
                                                                                                    while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                        stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                        idx = idx + 1
                                                                                                        continue 
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                                                else:
                                                                                                    address(stor1[stor1.length - 1].field_512) = 0
                                                                                                    address(stor1[stor1.length - 1].field_768) = 0
                                                                                                    stor1.length--
                                                                            else:
                                                                                stor1[cd[4]].field_256 = 0
                                                                                idx = 0
                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                            else:
                                                                if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                    revert with 0, 34
                                                                else:
                                                                    if bool(stor1[cd[4]].field_256):
                                                                        if bool(stor1[cd[4]].field_256) == uint255(stor1[cd[4]].field_256) * 0.5 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if stor1[stor1.length - 1].field_257 % 128:
                                                                                stor1[cd[4]].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                                                                                s = 0
                                                                                idx = 0
                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                    stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                    s = s + 1
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                            else:
                                                                                stor1[cd[4]].field_256 = 0
                                                                                idx = 0
                                                                                while (uint255(stor1[cd[4]].field_256) * 0.5) + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                    else:
                                                                        if bool(stor1[cd[4]].field_256) == stor1[cd[4]].field_257 % 128 < 32:
                                                                            revert with 0, 34
                                                                        else:
                                                                            if stor1[stor1.length - 1].field_257 % 128:
                                                                                stor1[cd[4]].field_256 = (2 * stor1[stor1.length - 1].field_257 % 128) + 1
                                                                                s = 0
                                                                                idx = 0
                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                    stor[s + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0
                                                                                    s = s + 1
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                idx = stor1[stor1.length - 1].field_257 % 128 + 31 / 32
                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                            else:
                                                                                stor1[cd[4]].field_256 = 0
                                                                                idx = 0
                                                                                while stor1[cd[4]].field_257 % 128 + 31 / 32 > idx:
                                                                                    stor[idx + sha3((4 * cd[4]) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                    idx = idx + 1
                                                                                    continue 
                                                                                address(stor1[cd[4]].field_512) = address(stor1[stor1.length - 1].field_512)
                                                                                address(stor1[cd[4]].field_768) = address(stor1[stor1.length - 1].field_768)
                                                                                if not stor1.length:
                                                                                    revert with 0, 49
                                                                                else:
                                                                                    address(stor1[stor1.length - 1].field_0) = 0
                                                                                    if bool(stor1[stor1.length - 1].field_256):
                                                                                        if bool(stor1[stor1.length - 1].field_256) == uint255(stor1[stor1.length - 1].field_256) * 0.5 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < uint255(stor1[stor1.length - 1].field_256) * 0.5:
                                                                                                idx = 0
                                                                                                while (uint255(stor1[stor1.length - 1].field_256) * 0.5) + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                    else:
                                                                                        if bool(stor1[stor1.length - 1].field_256) == stor1[stor1.length - 1].field_257 % 128 < 32:
                                                                                            revert with 0, 34
                                                                                        else:
                                                                                            stor1[stor1.length - 1].field_256 = 0
                                                                                            if 31 < stor1[stor1.length - 1].field_257 % 128:
                                                                                                idx = 0
                                                                                                while stor1[stor1.length - 1].field_257 % 128 + 31 / 32 > idx:
                                                                                                    stor[idx + sha3((4 * stor1.length - 1) + ('name', 'stor1', 1) + 1)].field_0 = 0
                                                                                                    idx = idx + 1
                                                                                                    continue 
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                                                                            else:
                                                                                                address(stor1[stor1.length - 1].field_512) = 0
                                                                                                address(stor1[stor1.length - 1].field_768) = 0
                                                                                                stor1.length--
                                            else:
        else:
            if unknown_0xe2bbb158(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xcf258e67(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xb5833d7b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if msg.sender == owner:
                            if cd[4] >= stor1.length:
                                revert with 0, 50
                            else:
                                require ext_code.size(address(stor1[cd[4]].field_0))
                                call address(stor1[cd[4]].field_0).0x4991f1f8 with:
                                     gas gas_remaining wei
                                    args address(stor1[cd[4]].field_512)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                        else:
                            if cd[4] >= stor1.length:
                                revert with 0, 50
                            else:
                                if address(stor1[cd[4]].field_768) != msg.sender:
                                    revert with 0, '!owner'
                                else:
                                    if cd[4] >= stor1.length:
                                        revert with 0, 50
                                    else:
                                        require ext_code.size(address(stor1[cd[4]].field_0))
                                        call address(stor1[cd[4]].field_0).0x4991f1f8 with:
                                             gas gas_remaining wei
                                            args address(stor1[cd[4]].field_512)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                    else:
                        if unknown_0xbc3cfaa7(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            if msg.sender == owner:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    require ext_code.size(address(stor1[cd[4]].field_0))
                                    call address(stor1[cd[4]].field_0).0x2f87e2e1 with:
                                         gas gas_remaining wei
                                        args cd[36], address(stor1[cd[4]].field_512)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    if address(stor1[cd[4]].field_768) != msg.sender:
                                        revert with 0, '!owner'
                                    else:
                                        if cd[4] >= stor1.length:
                                            revert with 0, 50
                                        else:
                                            require ext_code.size(address(stor1[cd[4]].field_0))
                                            call address(stor1[cd[4]].field_0).0x2f87e2e1 with:
                                                 gas gas_remaining wei
                                                args cd[36], address(stor1[cd[4]].field_512)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                        else:
                            require unknown_0xc6f678bd(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if msg.sender == owner:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    require ext_code.size(address(stor1[cd[4]].field_0))
                                    staticcall address(stor1[cd[4]].field_0).0x12accf93 with:
                                            gas gas_remaining wei
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if cd[4] >= stor1.length:
                                            revert with 0, 50
                                        else:
                                            mem[ceil32(return_data.size) + 132] = address(stor1[cd[4]].field_512)
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(stor1[cd[4]].field_512)
                                            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if cd[4] >= stor1.length:
                                                    revert with 0, 50
                                                else:
                                                    require ext_code.size(address(stor1[cd[4]].field_0))
                                                    staticcall address(stor1[cd[4]].field_0).0x12accf93 with:
                                                            gas gas_remaining wei
                                                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[(4 * ceil32(return_data.size)) + 164] = address(stor1[cd[4]].field_512)
                                                        mem[(4 * ceil32(return_data.size)) + 196] = address(stor1[cd[4]].field_0)
                                                        mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                                        mem[(4 * ceil32(return_data.size)) + 128] = 100
                                                        mem[(4 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 0, stor1[cd[4]].field_512)
                                                        mem[(4 * ceil32(return_data.size)) + 160 len 4] = unknown_0x23b872dd(?????)
                                                        mem[(4 * ceil32(return_data.size)) + 260] = 32
                                                        mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 'Address: insufficient balance for call'
                                                        else:
                                                            if not ext_code.size(address(ext_call.return_data[0])):
                                                                revert with 0, 'Address: call to non-contract'
                                                            else:
                                                                mem[(4 * ceil32(return_data.size)) + 324 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor1[cd[4]].field_512), uint32(stor1[cd[4]].field_512), address(stor1[cd[4]].field_0), ext_call.return_data[0], 0
                                                                mem[(4 * ceil32(return_data.size)) + 424] = 0
                                                                call address(ext_call.return_data[0]) with:
                                                                   funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor1[cd[4]].field_512), uint32(stor1[cd[4]].field_512), address(stor1[cd[4]].field_0), ext_call.return_data[0], 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor1[cd[4]].field_512), uint32(stor1[cd[4]].field_512), address(stor1[cd[4]].field_0), ext_call.return_data[0], 0) << 544)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if not mem[96]:
                                                                            if cd[4] >= stor1.length:
                                                                                revert with 0, 50
                                                                            else:
                                                                                require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                     gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            require mem[96] >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                            if not ext_call.return_data[0]:
                                                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                            else:
                                                                                if cd[4] >= stor1.length:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                    call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                         gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                else:
                                                                    mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if not return_data.size:
                                                                            if cd[4] >= stor1.length:
                                                                                revert with 0, 50
                                                                            else:
                                                                                require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                     gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
                                                                            if not mem[(4 * ceil32(return_data.size)) + 356]:
                                                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                            else:
                                                                                if cd[4] >= stor1.length:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                    call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                         gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                            else:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    if address(stor1[cd[4]].field_768) != msg.sender:
                                        revert with 0, '!owner'
                                    else:
                                        if cd[4] >= stor1.length:
                                            revert with 0, 50
                                        else:
                                            require ext_code.size(address(stor1[cd[4]].field_0))
                                            staticcall address(stor1[cd[4]].field_0).0x12accf93 with:
                                                    gas gas_remaining wei
                                            mem[128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if cd[4] >= stor1.length:
                                                    revert with 0, 50
                                                else:
                                                    mem[ceil32(return_data.size) + 132] = address(stor1[cd[4]].field_512)
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(stor1[cd[4]].field_512)
                                                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if cd[4] >= stor1.length:
                                                            revert with 0, 50
                                                        else:
                                                            require ext_code.size(address(stor1[cd[4]].field_0))
                                                            staticcall address(stor1[cd[4]].field_0).0x12accf93 with:
                                                                    gas gas_remaining wei
                                                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                mem[(4 * ceil32(return_data.size)) + 164] = address(stor1[cd[4]].field_512)
                                                                mem[(4 * ceil32(return_data.size)) + 196] = address(stor1[cd[4]].field_0)
                                                                mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                                                                mem[(4 * ceil32(return_data.size)) + 128] = 100
                                                                mem[(4 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 0, stor1[cd[4]].field_512)
                                                                mem[(4 * ceil32(return_data.size)) + 160 len 4] = unknown_0x23b872dd(?????)
                                                                mem[(4 * ceil32(return_data.size)) + 260] = 32
                                                                mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                else:
                                                                    if not ext_code.size(address(ext_call.return_data[0])):
                                                                        revert with 0, 'Address: call to non-contract'
                                                                    else:
                                                                        mem[(4 * ceil32(return_data.size)) + 324 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor1[cd[4]].field_512), uint32(stor1[cd[4]].field_512), address(stor1[cd[4]].field_0), ext_call.return_data[0], 0
                                                                        mem[(4 * ceil32(return_data.size)) + 424] = 0
                                                                        call address(ext_call.return_data[0]) with:
                                                                           funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor1[cd[4]].field_512), uint32(stor1[cd[4]].field_512), address(stor1[cd[4]].field_0), ext_call.return_data[0], 0) >> 224
                                                                             gas gas_remaining wei
                                                                            args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor1[cd[4]].field_512), uint32(stor1[cd[4]].field_512), address(stor1[cd[4]].field_0), ext_call.return_data[0], 0) << 544)
                                                                        if not return_data.size:
                                                                            if not ext_call.success:
                                                                                if mem[96]:
                                                                                    revert with memory
                                                                                      from 128
                                                                                       len mem[96]
                                                                                else:
                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                            else:
                                                                                if not mem[96]:
                                                                                    if cd[4] >= stor1.length:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                        call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                             gas gas_remaining wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                else:
                                                                                    require mem[96] >= 32
                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                    if not ext_call.return_data[0]:
                                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                    else:
                                                                                        if cd[4] >= stor1.length:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                            call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                                 gas gas_remaining wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                        else:
                                                                            mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            if not ext_call.success:
                                                                                if return_data.size:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                            else:
                                                                                if not return_data.size:
                                                                                    if cd[4] >= stor1.length:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                        call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                             gas gas_remaining wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
                                                                                    if not mem[(4 * ceil32(return_data.size)) + 356]:
                                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                    else:
                                                                                        if cd[4] >= stor1.length:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                            call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                                 gas gas_remaining wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                else:
                    if unknown_0xcf258e67(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == address(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        else:
                            if cd[4] >= stor1.length:
                                revert with 0, 50
                            else:
                                require ext_code.size(address(stor1[cd[4]].field_0))
                                call address(stor1[cd[4]].field_0).0xbf772173 with:
                                     gas gas_remaining wei
                                    args address(cd[36])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        if unknown_0xd25eda37(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 128
                            require cd[4] == address(cd[4])
                            require cd[36] <= test266151307()
                            require cd[36] + 35 < calldata.size
                            if ('cd', 36).length > test266151307():
                                revert with 0, 65
                            else:
                                if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                                    revert with 0, 65
                                else:
                                    require cd[36] + ('cd', 36).length + 36 <= calldata.size
                                    require cd[68] == address(cd[68])
                                    require cd[100] == address(cd[100])
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    else:
                                        stor1.length++
                                        address(stor1[stor1.length].field_0) = address(cd[4])
                                        if bool(storB10E[stor1.length].field_0):
                                            if bool(storB10E[stor1.length].field_0) == uint255(storB10E[stor1.length].field_0) * 0.5 < 32:
                                                revert with 0, 34
                                            else:
                                                if ('cd', 36).length:
                                                    stor[sha3((4 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)][] = Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length])
                                                    storB10E[stor1.length] = address(cd[68])
                                                    storB10E[stor1.length] = address(cd[100])
                                                else:
                                                    storB10E[stor1.length].field_0 = 0
                                                    idx = 0
                                                    while (uint255(storB10E[stor1.length].field_0) * 0.5) + 31 / 32 > idx:
                                                        stor[idx + sha3((4 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    storB10E[stor1.length] = address(cd[68])
                                                    storB10E[stor1.length] = address(cd[100])
                                        else:
                                            if bool(storB10E[stor1.length].field_0) == storB10E[stor1.length].field_1 % 128 < 32:
                                                revert with 0, 34
                                            else:
                                                if ('cd', 36).length:
                                                    stor[sha3((4 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)][] = Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length])
                                                    storB10E[stor1.length] = address(cd[68])
                                                    storB10E[stor1.length] = address(cd[100])
                                                else:
                                                    storB10E[stor1.length].field_0 = 0
                                                    idx = 0
                                                    while storB10E[stor1.length].field_1 % 128 + 31 / 32 > idx:
                                                        stor[idx + sha3((4 * stor1.length) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)] = 0
                                                        idx = idx + 1
                                                        continue 
                                                    storB10E[stor1.length] = address(cd[68])
                                                    storB10E[stor1.length] = address(cd[100])
                        else:
                            require unknown_0xd50c92dc(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[36] == address(cd[36])
                            if msg.sender == owner:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    require ext_code.size(address(stor1[cd[4]].field_0))
                                    call address(stor1[cd[4]].field_0).0xf940e385 with:
                                         gas gas_remaining wei
                                        args address(cd[36]), address(stor1[cd[4]].field_512)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    if address(stor1[cd[4]].field_768) != msg.sender:
                                        revert with 0, '!owner'
                                    else:
                                        if cd[4] >= stor1.length:
                                            revert with 0, 50
                                        else:
                                            require ext_code.size(address(stor1[cd[4]].field_0))
                                            call address(stor1[cd[4]].field_0).0xf940e385 with:
                                                 gas gas_remaining wei
                                                args address(cd[36]), address(stor1[cd[4]].field_512)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
            else:
                if unknown_0xf248a9f0(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xe2bbb158(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        if msg.sender == owner:
                            if cd[4] >= stor1.length:
                                revert with 0, 50
                            else:
                                require ext_code.size(address(stor1[cd[4]].field_0))
                                staticcall address(stor1[cd[4]].field_0).0x12accf93 with:
                                        gas gas_remaining wei
                                mem[128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if cd[4] >= stor1.length:
                                        revert with 0, 50
                                    else:
                                        mem[ceil32(return_data.size) + 132] = address(stor1[cd[4]].field_512)
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(stor1[cd[4]].field_512)
                                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < cd[36]:
                                                revert with 0, 'fund account dont have enough token'
                                            else:
                                                if cd[4] >= stor1.length:
                                                    revert with 0, 50
                                                else:
                                                    require ext_code.size(address(stor1[cd[4]].field_0))
                                                    staticcall address(stor1[cd[4]].field_0).0x12accf93 with:
                                                            gas gas_remaining wei
                                                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[(4 * ceil32(return_data.size)) + 164] = address(stor1[cd[4]].field_512)
                                                        mem[(4 * ceil32(return_data.size)) + 196] = address(stor1[cd[4]].field_0)
                                                        mem[(4 * ceil32(return_data.size)) + 228] = cd[36]
                                                        mem[(4 * ceil32(return_data.size)) + 128] = 100
                                                        mem[(4 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 0, stor1[cd[4]].field_512)
                                                        mem[(4 * ceil32(return_data.size)) + 160 len 4] = unknown_0x23b872dd(?????)
                                                        mem[(4 * ceil32(return_data.size)) + 260] = 32
                                                        mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                                        if eth.balance(this.address) < 0:
                                                            revert with 0, 'Address: insufficient balance for call'
                                                        else:
                                                            if not ext_code.size(address(ext_call.return_data[0])):
                                                                revert with 0, 'Address: call to non-contract'
                                                            else:
                                                                mem[(4 * ceil32(return_data.size)) + 324 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor1[cd[4]].field_512), uint32(stor1[cd[4]].field_512), address(stor1[cd[4]].field_0), cd[36], 0
                                                                mem[(4 * ceil32(return_data.size)) + 424] = 0
                                                                call address(ext_call.return_data[0]) with:
                                                                   funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor1[cd[4]].field_512), uint32(stor1[cd[4]].field_512), address(stor1[cd[4]].field_0), cd[36], 0) >> 224
                                                                     gas gas_remaining wei
                                                                    args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor1[cd[4]].field_512), uint32(stor1[cd[4]].field_512), address(stor1[cd[4]].field_0), cd[36], 0) << 544)
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        if mem[96]:
                                                                            revert with memory
                                                                              from 128
                                                                               len mem[96]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if not mem[96]:
                                                                            if cd[4] >= stor1.length:
                                                                                revert with 0, 50
                                                                            else:
                                                                                require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                     gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            require mem[96] >= 32
                                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                            if not ext_call.return_data[0]:
                                                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                            else:
                                                                                if cd[4] >= stor1.length:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                    call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                         gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                else:
                                                                    mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                    if not ext_call.success:
                                                                        if return_data.size:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                    else:
                                                                        if not return_data.size:
                                                                            if cd[4] >= stor1.length:
                                                                                revert with 0, 50
                                                                            else:
                                                                                require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                     gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
                                                                            if not mem[(4 * ceil32(return_data.size)) + 356]:
                                                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                            else:
                                                                                if cd[4] >= stor1.length:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                    call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                         gas gas_remaining wei
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                        else:
                            if cd[4] >= stor1.length:
                                revert with 0, 50
                            else:
                                if address(stor1[cd[4]].field_768) != msg.sender:
                                    revert with 0, '!owner'
                                else:
                                    if cd[4] >= stor1.length:
                                        revert with 0, 50
                                    else:
                                        require ext_code.size(address(stor1[cd[4]].field_0))
                                        staticcall address(stor1[cd[4]].field_0).0x12accf93 with:
                                                gas gas_remaining wei
                                        mem[128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if cd[4] >= stor1.length:
                                                revert with 0, 50
                                            else:
                                                mem[ceil32(return_data.size) + 132] = address(stor1[cd[4]].field_512)
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(stor1[cd[4]].field_512)
                                                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < cd[36]:
                                                        revert with 0, 'fund account dont have enough token'
                                                    else:
                                                        if cd[4] >= stor1.length:
                                                            revert with 0, 50
                                                        else:
                                                            require ext_code.size(address(stor1[cd[4]].field_0))
                                                            staticcall address(stor1[cd[4]].field_0).0x12accf93 with:
                                                                    gas gas_remaining wei
                                                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                                mem[(4 * ceil32(return_data.size)) + 164] = address(stor1[cd[4]].field_512)
                                                                mem[(4 * ceil32(return_data.size)) + 196] = address(stor1[cd[4]].field_0)
                                                                mem[(4 * ceil32(return_data.size)) + 228] = cd[36]
                                                                mem[(4 * ceil32(return_data.size)) + 128] = 100
                                                                mem[(4 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 0, stor1[cd[4]].field_512)
                                                                mem[(4 * ceil32(return_data.size)) + 160 len 4] = unknown_0x23b872dd(?????)
                                                                mem[(4 * ceil32(return_data.size)) + 260] = 32
                                                                mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 'Address: insufficient balance for call'
                                                                else:
                                                                    if not ext_code.size(address(ext_call.return_data[0])):
                                                                        revert with 0, 'Address: call to non-contract'
                                                                    else:
                                                                        mem[(4 * ceil32(return_data.size)) + 324 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor1[cd[4]].field_512), uint32(stor1[cd[4]].field_512), address(stor1[cd[4]].field_0), cd[36], 0
                                                                        mem[(4 * ceil32(return_data.size)) + 424] = 0
                                                                        call address(ext_call.return_data[0]) with:
                                                                           funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor1[cd[4]].field_512), uint32(stor1[cd[4]].field_512), address(stor1[cd[4]].field_0), cd[36], 0) >> 224
                                                                             gas gas_remaining wei
                                                                            args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor1[cd[4]].field_512), uint32(stor1[cd[4]].field_512), address(stor1[cd[4]].field_0), cd[36], 0) << 544)
                                                                        if not return_data.size:
                                                                            if not ext_call.success:
                                                                                if mem[96]:
                                                                                    revert with memory
                                                                                      from 128
                                                                                       len mem[96]
                                                                                else:
                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                            else:
                                                                                if not mem[96]:
                                                                                    if cd[4] >= stor1.length:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                        call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                             gas gas_remaining wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                else:
                                                                                    require mem[96] >= 32
                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                    if not ext_call.return_data[0]:
                                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                    else:
                                                                                        if cd[4] >= stor1.length:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                            call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                                 gas gas_remaining wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                        else:
                                                                            mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            if not ext_call.success:
                                                                                if return_data.size:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                            else:
                                                                                if not return_data.size:
                                                                                    if cd[4] >= stor1.length:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                        call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                             gas gas_remaining wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
                                                                                    if not mem[(4 * ceil32(return_data.size)) + 356]:
                                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                    else:
                                                                                        if cd[4] >= stor1.length:
                                                                                            revert with 0, 50
                                                                                        else:
                                                                                            require ext_code.size(address(stor1[cd[4]].field_0))
                                                                                            call address(stor1[cd[4]].field_0).0xfc16d377 with:
                                                                                                 gas gas_remaining wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                    else:
                        if unknown_0xe2bff5e6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if msg.sender == owner:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    require ext_code.size(address(stor1[cd[4]].field_0))
                                    call address(stor1[cd[4]].field_0).resume() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                            else:
                                if cd[4] >= stor1.length:
                                    revert with 0, 50
                                else:
                                    if address(stor1[cd[4]].field_768) != msg.sender:
                                        revert with 0, '!owner'
                                    else:
                                        if cd[4] >= stor1.length:
                                            revert with 0, 50
                                        else:
                                            require ext_code.size(address(stor1[cd[4]].field_0))
                                            call address(stor1[cd[4]].field_0).resume() with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                        else:
                            require unknown_0xe8a379b2(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            else:
                                call msg.sender with:
                                   value cd[4] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'MATIC_TRANSFER_FAILED'
                                    else:
                                else:
                                    if not ext_call.success:
                                        revert with 0, 'MATIC_TRANSFER_FAILED'
                                    else:
                else:
                    if unknown_0xf248a9f0(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if msg.sender == owner:
                            if cd[4] >= stor1.length:
                                revert with 0, 50
                            else:
                                require ext_code.size(address(stor1[cd[4]].field_0))
                                call address(stor1[cd[4]].field_0).0x4700d305 with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if cd[4] >= stor1.length:
                                        revert with 0, 50
                                    else:
                                        require ext_code.size(address(stor1[cd[4]].field_0))
                                        staticcall address(stor1[cd[4]].field_0).0x12accf93 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if cd[4] >= stor1.length:
                                                revert with 0, 50
                                            else:
                                                require ext_code.size(address(stor1[cd[4]].field_0))
                                                call address(stor1[cd[4]].field_0).0xf940e385 with:
                                                     gas gas_remaining wei
                                                    args address(ext_call.return_data[0]), address(stor1[cd[4]].field_512)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                        else:
                            if cd[4] >= stor1.length:
                                revert with 0, 50
                            else:
                                if address(stor1[cd[4]].field_768) != msg.sender:
                                    revert with 0, '!owner'
                                else:
                                    if cd[4] >= stor1.length:
                                        revert with 0, 50
                                    else:
                                        require ext_code.size(address(stor1[cd[4]].field_0))
                                        call address(stor1[cd[4]].field_0).0x4700d305 with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if cd[4] >= stor1.length:
                                                revert with 0, 50
                                            else:
                                                require ext_code.size(address(stor1[cd[4]].field_0))
                                                staticcall address(stor1[cd[4]].field_0).0x12accf93 with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if cd[4] >= stor1.length:
                                                        revert with 0, 50
                                                    else:
                                                        require ext_code.size(address(stor1[cd[4]].field_0))
                                                        call address(stor1[cd[4]].field_0).0xf940e385 with:
                                                             gas gas_remaining wei
                                                            args address(ext_call.return_data[0]), address(stor1[cd[4]].field_512)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                    else:
                        if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            else:
                                if not address(cd[4]):
                                    revert with 0, 'Ownable: new owner is the zero address'
                                else:
                                    emit OwnershipTransferred(owner, address(cd[4]));
                                    owner = address(cd[4])
                        else:
                            if unknown_0xf8c11e32(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 64
                                if cd[36] >= stor1.length:
                                    revert with 0, 'invalid end'
                                else:
                                    idx = cd[4]
                                    while idx <= cd[36]:
                                        if idx >= stor1.length:
                                            revert with 0, 50
                                        else:
                                            mem[0] = 1
                                            require ext_code.size(address(stor1[idx].field_0))
                                            staticcall address(stor1[idx].field_0).isPaused() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _1402 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_1402] == bool(mem[_1402])
                                                if mem[_1402]:
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    if idx >= stor1.length:
                                                        revert with 0, 50
                                                    else:
                                                        mem[0] = 1
                                                        mem[mem[64]] = 0xd389800f00000000000000000000000000000000000000000000000000000000
                                                        require ext_code.size(address(stor1[idx].field_0))
                                                        call address(stor1[idx].field_0).0xd389800f with:
                                                             gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                            else:
                                require unknown_0xf940e385(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 64
                                require cd[4] == address(cd[4])
                                require cd[36] == address(cd[36])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                else:
                                    mem[132] = this.address
                                    require ext_code.size(address(cd[4]))
                                    staticcall address(cd[4]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 164] = address(cd[36])
                                        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                                        mem[ceil32(return_data.size) + 128] = 68
                                        mem[ceil32(return_data.size) + 164 len 28] = address(cd[36]) << 64
                                        mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(return_data.size) + 228] = 32
                                        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        else:
                                            if not ext_code.size(address(cd[4])):
                                                revert with 0, 'Address: call to non-contract'
                                            else:
                                                mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ext_call.return_data[0], 0
                                                mem[ceil32(return_data.size) + 360] = 0
                                                call address(cd[4]) with:
                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ext_call.return_data[0], 0) >> 224
                                                     gas gas_remaining wei
                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ext_call.return_data[0], 0) << 288)
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if mem[96]:
                                                            revert with memory
                                                              from 128
                                                               len mem[96]
                                                        else:
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                    else:
                                                        if not mem[96]:
                                                        else:
                                                            require mem[96] >= 32
                                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                            if not ext_call.return_data[0]:
                                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
                                                else:
                                                    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                    else:
                                                        if not return_data.size:
                                                        else:
                                                            require return_data.size >= 32
                                                            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                                            if not mem[ceil32(return_data.size) + 324]:
                                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                            else:
}



}
