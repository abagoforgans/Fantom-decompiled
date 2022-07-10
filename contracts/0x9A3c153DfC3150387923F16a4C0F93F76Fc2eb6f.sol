contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
array of address stor4;
uint256 stor5;
array of address stor6;
array of address stor7;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDeadline(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor5 = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor2 = arg1
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor1 = arg1
}

function sub_4a08d377(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor3 = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1ad5cf0d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor4.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor4.length > idx:
            uint256(stor4[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(stor4[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor4.length > idx:
            uint256(stor4[idx]) = 0
            idx = idx + 1
            continue 
}

function buyBackAndBurn() {
    if block.timestamp > !stor5:
        revert with 0, 17
    mem[96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[100] = 0
    mem[132] = 128
    mem[228] = stor4.length
    mem[0] = 4
    idx = 0
    s = 260
    t = 0
    while idx < stor4.length:
        mem[s] = address(stor4[t])
        idx = idx + 1
        s = s + 32
        t = t + 1
        continue 
    mem[164] = this.address
    mem[196] = block.timestamp + stor5
    require ext_code.size(stor2)
    call stor2.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) / 2 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp + stor5, stor4.length, mem[260 len 32 * stor4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _24 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= test266151307()
    require mem[96 len 4], 0 + 127 < return_data.size + 96
    _25 = mem[mem[96 len 4], 0 + 96]
    if mem[mem[96 len 4], 0 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], 0 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _25
    require return_data.size >= _24 + (32 * _25) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _25] = mem[_24 + 128 len 32 * _25]
    if _25 < 1:
        revert with 0, 17
    if _25 - 1 >= _25:
        revert with 0, 50
    require ext_code.size(stor3)
    call stor3.0x42966c68 with:
         gas gas_remaining wei
        args mem[(32 * _25 - 1) + ceil32(return_data.size) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < stor6.length:
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = 6
        call stor6[idx] with:
           value eth.balance(this.address) / 10 wei
             gas gas_remaining wei
        if return_data.size:
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_59] = return_data.size
            mem[_59 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor7.length:
        if idx >= stor7.length:
            revert with 0, 50
        mem[0] = 7
        call stor7[idx] with:
           value eth.balance(this.address) / 20 wei
             gas gas_remaining wei
        if return_data.size:
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_67] = return_data.size
            mem[_67 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    call stor1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x195199f6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
                stor5 = cd[4]
            else:
                if unknown_0x1ad5cf0d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    if owner != msg.sender:
                        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
                    stor4.length = ('cd', 4).length
                    if not ('cd', 4).length:
                        idx = 0
                        while stor4.length > idx:
                            uint256(stor4[idx]) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = cd[4] + 36
                        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
                            address(stor4[s]) = address(cd[idx])
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                        while stor4.length > idx:
                            uint256(stor4[idx]) = 0
                            idx = idx + 1
                            continue 
                else:
                    if unknown_0x4a08d377(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
                        stor3 = address(cd[4])
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x51cff8d9(?????):
                            require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
                            emit OwnershipTransferred(owner, 0);
                            owner = 0
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0xc0d78655(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
                stor2 = address(cd[4])
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xc970e99f(?????):
                    if unknown_0xd0d41fe1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
                        stor1 = address(cd[4])
                    else:
                        require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, address(cd[4]));
                        owner = address(cd[4])
                else:
                    require not msg.value
                    if block.timestamp > !stor5:
                        revert with 0, 17
                    mem[128] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[132] = 0
                    mem[164] = 128
                    mem[260] = stor4.length
                    mem[0] = 4
                    idx = 0
                    s = 292
                    t = 0
                    while idx < stor4.length:
                        mem[s] = address(stor4[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[196] = this.address
                    mem[228] = block.timestamp + stor5
                    require ext_code.size(stor2)
                    call stor2.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + stor5, stor4.length, mem[292 len 32 * stor4.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _67 = mem[128 len 4], 0
                    require mem[128 len 4], 0 <= test266151307()
                    require mem[128 len 4], 0 + 159 < return_data.size + 128
                    _68 = mem[mem[128 len 4], 0 + 128]
                    if mem[mem[128 len 4], 0 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], 0 + 128]) + 129 > test266151307() or ceil32(32 * mem[mem[128 len 4], 0 + 128]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], 0 + 128]) + 129
                    mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], 0 + 128]
                    require return_data.size >= _67 + (32 * _68) + 32
                    mem[ceil32(return_data.size) + 160 len 32 * _68] = mem[_67 + 160 len 32 * _68]
                    if _68 < 1:
                        revert with 0, 17
                    if _68 - 1 >= _68:
                        revert with 0, 50
                    require ext_code.size(stor3)
                    call stor3.0x42966c68 with:
                         gas gas_remaining wei
                        args mem[(32 * _68 - 1) + ceil32(return_data.size) + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < stor6.length:
                        if idx >= stor6.length:
                            revert with 0, 50
                        mem[0] = 6
                        call stor6[idx] with:
                           value eth.balance(this.address) / 10 wei
                             gas gas_remaining wei
                        if return_data.size:
                            _102 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_102] = return_data.size
                            mem[_102 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < stor7.length:
                        if idx >= stor7.length:
                            revert with 0, 50
                        mem[0] = 7
                        call stor7[idx] with:
                           value eth.balance(this.address) / 20 wei
                             gas gas_remaining wei
                        if return_data.size:
                            _110 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_110] = return_data.size
                            mem[_110 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    call stor1 with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
}



}
