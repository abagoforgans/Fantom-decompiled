contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address rmAddress; offset 16
uint256 sub_48a3ef5c;
address owner;
uint256 stor2;
uint256 stor3;
array of uint256 stor4;
mapping of uint256 stor5;
array of uint256 sub_363aca1f;
mapping of uint256 prices;
mapping of address sub_11b84a8b;

function sub_11b84a8b(?) {
    require calldata.size - 4 >= 32
    return address(sub_11b84a8b[arg1])
}

function sub_363aca1f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_363aca1f[address(arg1)]
}

function sub_48a3ef5c(?) {
    return sub_48a3ef5c
}

function rm() {
    return rmAddress
}

function sub_5285bd51(?) {
    return stor4.length
}

function owner() {
    return address(owner)
}

function prices(uint256 arg1) {
    require calldata.size - 4 >= 32
    return prices[arg1]
}

function _fallback() payable {
    revert
}

function sub_f61657ee(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, '!owner'
    sub_48a3ef5c = arg1
    emit SetFeeBps(arg1);
}

function transfer_ownership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, '!owner'
    address(owner) = arg1
    emit OwnershipTransferred(msg.sender, arg1);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, '!owner'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function initialize(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    stor3 = 1
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
    require ext_code.size(rmAddress)
    call rmAddress.setApprovalForAll(address arg1, bool arg2) with:
         gas gas_remaining wei
        args 0xd4c98901563ca730332e841edbcb801fe9f2551, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_48a3ef5c = arg1
    emit OwnershipTransferred(0, msg.sender);
    emit SetFeeBps(arg1);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function list(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor3 != 1:
        revert with 0, '!lock'
    stor3 = 2
    if not arg2:
        revert with 0, 'bad price'
    if prices[arg1]:
        revert with 0, 'already listed'
    require ext_code.size(rmAddress)
    call rmAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    prices[arg1] = arg2
    uint256(sub_11b84a8b[arg1]) = msg.sender or Mask(96, 160, uint256(sub_11b84a8b[arg1]))
    if not stor5[arg1]:
        stor4.length++
        stor4[stor4.length] = arg1
        stor5[arg1] = stor4.length
    if not sub_363aca1f[msg.sender][1][arg1]:
        sub_363aca1f[msg.sender]++
        sub_363aca1f[msg.sender][sub_363aca1f[msg.sender]] = arg1
        sub_363aca1f[msg.sender][1][arg1] = sub_363aca1f[msg.sender]
    emit List(arg2, arg1, msg.sender);
    stor3 = 1
}

function sub_b27e7668(?) {
    require calldata.size - 4 >= 64
    if arg2 > test266151307():
        revert with 0, 65
    if arg2:
        mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    if arg2 > test266151307():
        revert with 0, 65
    mem[(32 * arg2) + 128] = arg2
    if arg2:
        mem[(32 * arg2) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    idx = 0
    while idx < arg2:
        if arg1 > !idx:
            revert with 0, 17
        if arg1 + idx >= stor4.length:
            revert with 0, 50
        if idx >= arg2:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[('name', 'stor4', 4) + arg1 + idx]
        if idx >= arg2:
            revert with 0, 50
        mem[0] = stor[('name', 'stor4', 4) + arg1 + idx]
        mem[32] = 7
        if idx >= mem[(32 * arg2) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * arg2) + 160] = prices[stor[('name', 'stor4', 4) + arg1 + idx]]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * arg2) + 160] = 64
    mem[(64 * arg2) + 224] = arg2
    mem[(64 * arg2) + 256 len 32 * arg2] = mem[128 len 32 * arg2]
    mem[(64 * arg2) + 192] = (32 * arg2) + 96
    mem[(98 * arg2) + 256] = mem[(32 * arg2) + 128]
    mem[(98 * arg2) + 288 len 32 * mem[(32 * arg2) + 128]] = mem[(32 * arg2) + 160 len 32 * mem[(32 * arg2) + 128]]
    return memory
      from (64 * arg2) + 160
       len (161 * arg2) + (32 * mem[(32 * arg2) + 128]) + 128
}

function sub_1bfd4b81(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg3 > test266151307():
        revert with 0, 65
    if arg3:
        mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    if arg3 > test266151307():
        revert with 0, 65
    mem[(32 * arg3) + 128] = arg3
    if arg3:
        mem[(32 * arg3) + 160 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
    idx = 0
    while idx < arg3:
        if arg2 > !idx:
            revert with 0, 17
        if arg2 + idx >= sub_363aca1f[address(arg1)]:
            revert with 0, 50
        if idx >= arg3:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_363aca1f', 6)) + arg2 + idx]
        if idx >= arg3:
            revert with 0, 50
        mem[0] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_363aca1f', 6)) + arg2 + idx]
        mem[32] = 7
        if idx >= mem[(32 * arg3) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * arg3) + 160] = prices[stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)) + arg2 + idx]]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * arg3) + 160] = 64
    mem[(64 * arg3) + 224] = arg3
    mem[(64 * arg3) + 256 len 32 * arg3] = mem[128 len 32 * arg3]
    mem[(64 * arg3) + 192] = (32 * arg3) + 96
    mem[(98 * arg3) + 256] = mem[(32 * arg3) + 128]
    mem[(98 * arg3) + 288 len 32 * mem[(32 * arg3) + 128]] = mem[(32 * arg3) + 160 len 32 * mem[(32 * arg3) + 128]]
    return memory
      from (64 * arg3) + 160
       len (161 * arg3) + (32 * mem[(32 * arg3) + 128]) + 128
}

function unlist(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor3 != 1:
        revert with 0, '!lock'
    stor3 = 2
    if not prices[arg1]:
        revert with 0, '!listed'
    if address(sub_11b84a8b[arg1]) != msg.sender:
        revert with 0, '!lister'
    prices[arg1] = 0
    address(sub_11b84a8b[arg1]) = 0
    require ext_code.size(rmAddress)
    call rmAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor5[arg1]:
        if stor5[arg1] < 1:
            revert with 0, 17
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 != stor5[arg1] - 1:
            if stor4.length - 1 >= stor4.length:
                revert with 0, 50
            if stor5[arg1] - 1 >= stor4.length:
                revert with 0, 50
            stor4[stor5[arg1]] = stor4[stor4.length]
            stor5[stor4[stor4.length]] = stor5[arg1]
        if not stor4.length:
            revert with 0, 49
        stor4[stor4.length] = 0
        stor4.length--
        stor5[arg1] = 0
    if sub_363aca1f[msg.sender][1][arg1]:
        if sub_363aca1f[msg.sender][1][arg1] < 1:
            revert with 0, 17
        if sub_363aca1f[msg.sender] < 1:
            revert with 0, 17
        if sub_363aca1f[msg.sender] - 1 != sub_363aca1f[msg.sender][1][arg1] - 1:
            if sub_363aca1f[msg.sender] - 1 >= sub_363aca1f[msg.sender]:
                revert with 0, 50
            if sub_363aca1f[msg.sender][1][arg1] - 1 >= sub_363aca1f[msg.sender]:
                revert with 0, 50
            sub_363aca1f[msg.sender][sub_363aca1f[msg.sender][1][arg1]] = sub_363aca1f[msg.sender][sub_363aca1f[msg.sender]]
            sub_363aca1f[msg.sender][1][sub_363aca1f[msg.sender][sub_363aca1f[msg.sender]]] = sub_363aca1f[msg.sender][1][arg1]
        if not sub_363aca1f[msg.sender]:
            revert with 0, 49
        sub_363aca1f[msg.sender][sub_363aca1f[msg.sender]] = 0
        sub_363aca1f[msg.sender]--
        sub_363aca1f[msg.sender][1][arg1] = 0
    emit 0xce7aa37f: arg1, msg.sender
    stor3 = 1
}

function sub_39c7f7ab(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor3 != 1:
        revert with 0, '!lock'
    stor3 = 2
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'list lengths different'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[36] + 36)] > 0:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 7
            if not prices[cd[((32 * idx) + cd[4] + 36)]]:
                mem[100] = msg.sender
                mem[132] = this.address
                mem[164] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(rmAddress)
                call rmAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                prices[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
                uint256(sub_11b84a8b[cd[((32 * idx) + cd[4] + 36)]]) = msg.sender or Mask(96, 160, uint256(sub_11b84a8b[cd[((32 * idx) + cd[4] + 36)]]))
                if not stor5[cd[((32 * idx) + cd[4] + 36)]]:
                    stor4.length++
                    stor4[stor4.length] = cd[((32 * idx) + cd[4] + 36)]
                    stor5[cd[((32 * idx) + cd[4] + 36)]] = stor4.length
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = sha3(msg.sender, 6) + 1
                if not sub_363aca1f[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]:
                    sub_363aca1f[msg.sender]++
                    sub_363aca1f[msg.sender][sub_363aca1f[msg.sender]] = cd[((32 * idx) + cd[4] + 36)]
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = sha3(msg.sender, 6) + 1
                    sub_363aca1f[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]] = sub_363aca1f[msg.sender]
                mem[96] = cd[((32 * idx) + cd[36] + 36)]
                emit List(cd[((32 * idx) + cd[36] + 36)], cd[((32 * idx) + cd[4] + 36)], msg.sender);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor3 = 1
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3 != 1:
        revert with 0, '!lock'
    stor3 = 2
    if not prices[arg1]:
        revert with 0, '!listed'
    if prices[arg1] != msg.value:
        revert with 0, 'bad msg.value'
    if prices[arg1] and sub_48a3ef5c > -1 / prices[arg1]:
        revert with 0, 17
    if prices[arg1] < prices[arg1] * sub_48a3ef5c / 10000:
        revert with 0, 17
    prices[arg1] = 0
    address(sub_11b84a8b[arg1]) = 0
    require ext_code.size(rmAddress)
    call rmAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(sub_11b84a8b[arg1]) with:
       value prices[arg1] - (prices[arg1] * sub_48a3ef5c / 10000) wei
         gas 2300 * is_zero(value) wei
    if stor5[arg1]:
        if stor5[arg1] < 1:
            revert with 0, 17
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 != stor5[arg1] - 1:
            if stor4.length - 1 >= stor4.length:
                revert with 0, 50
            if stor5[arg1] - 1 >= stor4.length:
                revert with 0, 50
            stor4[stor5[arg1]] = stor4[stor4.length]
            stor5[stor4[stor4.length]] = stor5[arg1]
        if not stor4.length:
            revert with 0, 49
        stor4[stor4.length] = 0
        stor4.length--
        stor5[arg1] = 0
    if sub_363aca1f[address(stor8[arg1])][1][arg1]:
        if sub_363aca1f[address(stor8[arg1])][1][arg1] < 1:
            revert with 0, 17
        if sub_363aca1f[address(stor8[arg1])] < 1:
            revert with 0, 17
        if sub_363aca1f[address(stor8[arg1])] - 1 != sub_363aca1f[address(stor8[arg1])][1][arg1] - 1:
            if sub_363aca1f[address(stor8[arg1])] - 1 >= sub_363aca1f[address(stor8[arg1])]:
                revert with 0, 50
            if sub_363aca1f[address(stor8[arg1])][1][arg1] - 1 >= sub_363aca1f[address(stor8[arg1])]:
                revert with 0, 50
            sub_363aca1f[address(stor8[arg1])][sub_363aca1f[address(stor8[arg1])][1][arg1]] = sub_363aca1f[address(stor8[arg1])][sub_363aca1f[address(stor8[arg1])]]
            sub_363aca1f[address(stor8[arg1])][1][sub_363aca1f[address(stor8[arg1])][sub_363aca1f[address(stor8[arg1])]]] = sub_363aca1f[address(stor8[arg1])][1][arg1]
        if not sub_363aca1f[address(stor8[arg1])]:
            revert with 0, 49
        sub_363aca1f[address(stor8[arg1])][sub_363aca1f[address(stor8[arg1])]] = 0
        sub_363aca1f[address(stor8[arg1])]--
        sub_363aca1f[address(stor8[arg1])][1][arg1] = 0
    emit Buy(prices[arg1], prices[arg1] * sub_48a3ef5c / 10000, arg1, address(sub_11b84a8b[arg1]), msg.sender);
    stor3 = 1
}

function sub_89d166aa(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor3 != 1:
        revert with 0, '!lock'
    stor3 = 2
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 7
        if prices[cd[((32 * idx) + cd[4] + 36)]] > 0:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 8
            if msg.sender == address(sub_11b84a8b[cd[((32 * idx) + cd[4] + 36)]]):
                prices[cd[((32 * idx) + cd[4] + 36)]] = 0
                address(sub_11b84a8b[cd[((32 * idx) + cd[4] + 36)]]) = 0
                mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[100] = this.address
                mem[132] = msg.sender
                mem[164] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(rmAddress)
                call rmAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor5[cd[((32 * idx) + cd[4] + 36)]]:
                    if stor5[cd[((32 * idx) + cd[4] + 36)]] < 1:
                        revert with 0, 17
                    if stor4.length < 1:
                        revert with 0, 17
                    if stor4.length - 1 != stor5[cd[((32 * idx) + cd[4] + 36)]] - 1:
                        if stor4.length - 1 >= stor4.length:
                            revert with 0, 50
                        if stor5[cd[((32 * idx) + cd[4] + 36)]] - 1 >= stor4.length:
                            revert with 0, 50
                        stor4[stor5[cd[((32 * idx) + cd[4] + 36)]]] = stor4[stor4.length]
                        stor5[stor4[stor4.length]] = stor5[cd[((32 * idx) + cd[4] + 36)]]
                    if not stor4.length:
                        revert with 0, 49
                    stor4[stor4.length] = 0
                    stor4.length--
                    stor5[cd[((32 * idx) + cd[4] + 36)]] = 0
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = sha3(msg.sender, 6) + 1
                if sub_363aca1f[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]:
                    if sub_363aca1f[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]] < 1:
                        revert with 0, 17
                    if sub_363aca1f[msg.sender] < 1:
                        revert with 0, 17
                    if sub_363aca1f[msg.sender] - 1 != sub_363aca1f[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]] - 1:
                        if sub_363aca1f[msg.sender] - 1 >= sub_363aca1f[msg.sender]:
                            revert with 0, 50
                        if sub_363aca1f[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]] - 1 >= sub_363aca1f[msg.sender]:
                            revert with 0, 50
                        sub_363aca1f[msg.sender][sub_363aca1f[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]] = sub_363aca1f[msg.sender][sub_363aca1f[msg.sender]]
                        sub_363aca1f[msg.sender][1][sub_363aca1f[msg.sender][sub_363aca1f[msg.sender]]] = sub_363aca1f[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]]
                    if not sub_363aca1f[msg.sender]:
                        revert with 0, 49
                    sub_363aca1f[msg.sender][sub_363aca1f[msg.sender]] = 0
                    sub_363aca1f[msg.sender]--
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = sha3(msg.sender, 6) + 1
                    sub_363aca1f[msg.sender][1][cd[((32 * idx) + cd[4] + 36)]] = 0
                emit 0xce7aa37f: cd[((32 * idx) + cd[4] + 36)], msg.sender
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor3 = 1
}



}
