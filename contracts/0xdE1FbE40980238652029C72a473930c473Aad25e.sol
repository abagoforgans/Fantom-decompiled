contract main {




// =====================  Runtime code  =====================


const sub_16a49186(?) = eth.balance(this.address)


uint8 stor0;
uint8 stor0; offset 8
address owner; offset 16
uint256 stor0; offset 8
mapping of struct stor1;
array of struct stor2;
uint256 mintingFee;
address sub_bcde4d59Address;
address sub_52952bb1Address;

function sub_52952bb1(?) {
    return sub_52952bb1Address
}

function owner() {
    return owner
}

function getMintingFee() {
    return mintingFee
}

function sub_bcde4d59(?) {
    return sub_bcde4d59Address
}

function _fallback() payable {
    revert
}

function initialized() {
    if not sub_bcde4d59Address:
        return bool(sub_bcde4d59Address)
    return bool(sub_52952bb1Address)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMintingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintingFee = arg1
    emit 0xff0d47c3: arg1
}

function collectFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Fees send failed'
    emit 0xa44d2934: address(arg1), eth.balance(this.address)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
    emit 0x5e67a9c4: arg1
}

function sub_ca68d768(?) {
    if stor2.length:
        mem[128] = uint256(stor2.field_0)
        idx = 128
        s = 0
        while (32 * stor2.length) + 96 > idx:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor2.length, data=mem[128 len 32 * stor2.length])
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    mem[(32 * stor2.length) + 192 len 32 * stor2.length] = mem[128 len 32 * stor2.length]
    return memory
      from (32 * stor2.length) + 128
       len (96 * stor2.length) + 64
}

function initialize(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        sub_bcde4d59Address = arg1
        sub_52952bb1Address = arg2
        mintingFee = arg3
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            sub_bcde4d59Address = arg1
            sub_52952bb1Address = arg2
            mintingFee = arg3
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            sub_bcde4d59Address = arg1
            sub_52952bb1Address = arg2
            mintingFee = arg3
            uint8(stor0.field_8) = 0
}

function sub_f6e9b70a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 160
    if ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 1
        if stor1[mem[(32 * idx) + 128]].field_0:
            if stor1[mem[(32 * idx) + 128]].field_0 == stor1[mem[(32 * idx) + 128]].field_1 < 32:
                revert with 0, 34
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor1[mem[(32 * idx) + 128]].field_1 != 0
        else:
            if stor1[mem[(32 * idx) + 128]].field_0 == stor1[mem[(32 * idx) + 128]].field_1 < 32:
                revert with 0, 34
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = stor1[mem[(32 * idx) + 128]].field_1 != 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 160] = 32
    mem[(64 * ('cd', 4).length) + 192] = ('cd', 4).length
    idx = 0
    s = mem[64] + 64
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 4).length:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (98 * ('cd', 4).length) + -mem[64] + 224
}

function sub_f8a8bc7c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not sub_bcde4d59Address:
        revert with 0, 'Not initialized'
    if not sub_52952bb1Address:
        revert with 0, 'Not initialized'
    if msg.value < mintingFee:
        revert with 0, 'Missing fee'
    if stor1[arg1].field_0:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 0, 34
        if stor1[arg1].field_1:
            revert with 0, 'Niftypix Data already set'
    else:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 0, 34
        if stor1[arg1].field_1:
            revert with 0, 'Niftypix Data already set'
    require ext_code.size(sub_52952bb1Address)
    staticcall sub_52952bb1Address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] <= 0:
        revert with 0, 'Does not own this token'
    require ext_code.size(sub_bcde4d59Address)
    staticcall sub_bcde4d59Address.tokenType(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < 3
    if ext_call.return_data[0] > 2:
        revert with 0, 33
    if ext_call.return_data[0] != 2:
        revert with 0, 'Not a Bitgem Canvas NFT'
    if stor1[arg1].field_0:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor1[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1[arg1].field_0 = 0
            idx = 0
            while stor1[arg1].field_1 + 31 / 32 > idx:
                stor1[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor1[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor1[arg1].field_0 = 0
            idx = 0
            while stor1[arg1].field_1 + 31 / 32 > idx:
                stor1[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor2.length++
    stor2[stor2.length].field_0 = arg1
    emit 0x1fc153de: arg1, Array(len=arg2.length, data=arg2[all])
}

function sub_0a72e71b(?) {
    require calldata.size - 4 >= 32
    if stor1[arg1].field_0:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 0, 34
        if stor1[arg1].field_0:
            if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
                revert with 0, 34
            if stor1[arg1].field_1:
                if 31 < stor1[arg1].field_1:
                    mem[128] = stor1[arg1].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[arg1].field_1), data=mem[128 len ceil32(stor1[arg1].field_1)])
                mem[128] = 256 * stor1[arg1].field_8
        else:
            if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
                revert with 0, 34
            if stor1[arg1].field_1:
                if 31 < stor1[arg1].field_1:
                    mem[128] = stor1[arg1].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[arg1].field_1), data=mem[128 len ceil32(stor1[arg1].field_1)])
                mem[128] = 256 * stor1[arg1].field_8
        mem[ceil32(stor1[arg1].field_1) + 192 len ceil32(stor1[arg1].field_1)] = mem[128 len ceil32(stor1[arg1].field_1)]
        if ceil32(stor1[arg1].field_1) > stor1[arg1].field_1:
            mem[ceil32(stor1[arg1].field_1) + stor1[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1[arg1].field_1), data=mem[128 len ceil32(stor1[arg1].field_1)], mem[(2 * ceil32(stor1[arg1].field_1)) + 192 len 2 * ceil32(stor1[arg1].field_1)]), 
    if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
        revert with 0, 34
    if stor1[arg1].field_0:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 0, 34
        if stor1[arg1].field_1:
            if 31 < stor1[arg1].field_1:
                mem[128] = stor1[arg1].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)])
            mem[128] = 256 * stor1[arg1].field_8
    else:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 0, 34
        if stor1[arg1].field_1:
            if 31 < stor1[arg1].field_1:
                mem[128] = stor1[arg1].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor1[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)])
            mem[128] = 256 * stor1[arg1].field_8
    mem[ceil32(stor1[arg1].field_1) + 192 len ceil32(stor1[arg1].field_1)] = mem[128 len ceil32(stor1[arg1].field_1)]
    if ceil32(stor1[arg1].field_1) > stor1[arg1].field_1:
        mem[ceil32(stor1[arg1].field_1) + stor1[arg1].field_1 + 192] = 0
    return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)], mem[(2 * ceil32(stor1[arg1].field_1)) + 192 len 2 * ceil32(stor1[arg1].field_1)]), 
}



}
