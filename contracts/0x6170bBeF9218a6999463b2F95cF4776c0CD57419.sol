contract main {




// =====================  Runtime code  =====================


#
#  - sub_a348f75b(?)
#
address owner;
address stor1;
array of struct stor2;
mapping of struct stor3;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403024;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403025;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403026;
array of uint8 stor29102676481673041902632991033461445430619272659676223336789171408008386403027;

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

function sub_5229d126(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
}

function sub_afa984d0(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor2.length:
        revert with 0, 50
    require not uint8(stor2[arg1].field_1280)
    uint8(stor2[arg1].field_1280) = 1
    emit 0x592ed3ff: arg1
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

function sub_b9af1da5(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2.length++
    address(stor2[stor2.length].field_0) = address(arg1)
    if bool(stor4057[stor2.length].field_0):
        if bool(stor4057[stor2.length].field_0) == uint255(stor4057[stor2.length].field_1) < 32:
            revert with 0, 34
        if arg2.length:
            stor[sha3((6 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)][] = Array(len=arg2.length, data=arg2[all])
        else:
            stor4057[stor2.length].field_0 = 0
            idx = 0
            while uint255(stor4057[stor2.length].field_1) + 31 / 32 > idx:
                stor[idx + sha3((6 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)] = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4057[stor2.length].field_0) == stor4057[stor2.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor[sha3((6 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)][] = Array(len=arg2.length, data=arg2[all])
        else:
            stor4057[stor2.length].field_0 = 0
            idx = 0
            while stor4057[stor2.length].field_1 % 128 + 31 / 32 > idx:
                stor[idx + sha3((6 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)] = 0
                idx = idx + 1
                continue 
    stor4057[stor2.length] = arg3
    stor4057[stor2.length] = arg4
    stor4057[stor2.length] = arg5
    stor4057[stor2.length] = 0
}

function sub_9d62812c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if bool(stor3[arg1][arg2].field_0):
        if bool(stor3[arg1][arg2].field_0) == uint255(stor3[arg1][arg2].field_1) < 32:
            revert with 0, 34
        if bool(stor3[arg1][arg2].field_0):
            if bool(stor3[arg1][arg2].field_0) == uint255(stor3[arg1][arg2].field_1) < 32:
                revert with 0, 34
            if uint255(stor3[arg1][arg2].field_1):
                if 31 >= uint255(stor3[arg1][arg2].field_1):
                    mem[128] = 256 * Mask(248, 0, stor3[arg1][arg2].field_8)
                else:
                    mem[128] = stor3[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while uint255(stor3[arg1][arg2].field_1) + 96 > idx:
                        mem[idx + 32] = stor3[arg1][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor3[arg1][arg2].field_0) == stor3[arg1][arg2].field_1 % 128 < 32:
                revert with 0, 34
            if stor3[arg1][arg2].field_1 % 128:
                if 31 >= stor3[arg1][arg2].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor3[arg1][arg2].field_8)
                else:
                    mem[128] = stor3[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1][arg2].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor3[arg1][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint255(stor3[arg1][arg2].field_1)), data=mem[128 len ceil32(uint255(stor3[arg1][arg2].field_1))]), 
               bool(uint8(stor3[arg1][arg2].field_256))
    if bool(stor3[arg1][arg2].field_0) == stor3[arg1][arg2].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor3[arg1][arg2].field_0):
        if bool(stor3[arg1][arg2].field_0) == uint255(stor3[arg1][arg2].field_1) < 32:
            revert with 0, 34
        if uint255(stor3[arg1][arg2].field_1):
            if 31 >= uint255(stor3[arg1][arg2].field_1):
                mem[128] = 256 * Mask(248, 0, stor3[arg1][arg2].field_8)
            else:
                mem[128] = stor3[arg1][arg2].field_0
                idx = 128
                s = 0
                while uint255(stor3[arg1][arg2].field_1) + 96 > idx:
                    mem[idx + 32] = stor3[arg1][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor3[arg1][arg2].field_0) == stor3[arg1][arg2].field_1 % 128 < 32:
            revert with 0, 34
        if stor3[arg1][arg2].field_1 % 128:
            if 31 >= stor3[arg1][arg2].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor3[arg1][arg2].field_8)
            else:
                mem[128] = stor3[arg1][arg2].field_0
                idx = 128
                s = 0
                while stor3[arg1][arg2].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor3[arg1][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor3[arg1][arg2].field_0 % 128, data=mem[128 len ceil32(stor3[arg1][arg2].field_1 % 128)]), 
           bool(uint8(stor3[arg1][arg2].field_256))
}

function sub_4db44e1d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor2.length
    if bool(stor2[arg1].field_256):
        if bool(stor2[arg1].field_256) == uint255(stor2[arg1].field_257) < 32:
            revert with 0, 34
        if bool(stor2[arg1].field_256):
            if bool(stor2[arg1].field_256) == uint255(stor2[arg1].field_257) < 32:
                revert with 0, 34
            if uint255(stor2[arg1].field_257):
                if 31 >= uint255(stor2[arg1].field_257):
                    mem[128] = 256 * Mask(248, 0, stor2[arg1].field_264)
                else:
                    mem[128] = stor[sha3((6 * arg1) + ('name', 'stor2', 2) + 1)].field_0
                    idx = 128
                    s = 0
                    while uint255(stor2[arg1].field_257) + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor2', 2) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor2[arg1].field_256) == stor2[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor2[arg1].field_257 % 128:
                if 31 >= stor2[arg1].field_257 % 128:
                    mem[128] = 256 * Mask(248, 0, stor2[arg1].field_264)
                else:
                    mem[128] = stor[sha3((6 * arg1) + ('name', 'stor2', 2) + 1)].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_257 % 128 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor2', 2) + 1)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return address(stor2[arg1].field_0), 
               Array(len=2 * Mask(256, -1, uint255(stor2[arg1].field_257)), data=mem[128 len ceil32(uint255(stor2[arg1].field_257))]),
               stor2[arg1].field_512,
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               bool(uint8(stor2[arg1].field_1280))
    if bool(stor2[arg1].field_256) == stor2[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor2[arg1].field_256):
        if bool(stor2[arg1].field_256) == uint255(stor2[arg1].field_257) < 32:
            revert with 0, 34
        if uint255(stor2[arg1].field_257):
            if 31 >= uint255(stor2[arg1].field_257):
                mem[128] = 256 * Mask(248, 0, stor2[arg1].field_264)
            else:
                mem[128] = stor[sha3((6 * arg1) + ('name', 'stor2', 2) + 1)].field_0
                idx = 128
                s = 0
                while uint255(stor2[arg1].field_257) + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor2', 2) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor2[arg1].field_256) == stor2[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor2[arg1].field_257 % 128:
            if 31 >= stor2[arg1].field_257 % 128:
                mem[128] = 256 * Mask(248, 0, stor2[arg1].field_264)
            else:
                mem[128] = stor[sha3((6 * arg1) + ('name', 'stor2', 2) + 1)].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_257 % 128 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor2', 2) + 1)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return address(stor2[arg1].field_0), 
           Array(len=stor2[arg1].field_256 % 128, data=mem[128 len ceil32(stor2[arg1].field_257 % 128)]),
           stor2[arg1].field_512,
           stor2[arg1].field_768,
           stor2[arg1].field_1024,
           bool(uint8(stor2[arg1].field_1280))
}

function sub_07400f09(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg2 >= stor2.length:
        revert with 0, 50
    require ext_code.size(address(stor2[arg2].field_0))
    staticcall address(stor2[arg2].field_0).balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] >= stor2[arg2].field_768
    require not uint8(stor3[arg2][msg.sender].field_256)
    require not uint8(stor2[arg2].field_1280)
    require ext_code.size(address(stor2[arg2].field_0))
    call address(stor2[arg2].field_0).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), stor2[arg2].field_768
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 128] = 100
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(stor2[arg2].field_0)):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(stor2[arg2].field_0)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 324 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), stor2[arg2].field_768, 0
    call address(stor2[arg2].field_0) with:
       funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), stor2[arg2].field_768, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), stor2[arg2].field_768, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if arg1.length:
                revert with arg1[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length:
            require arg1.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 356] == bool(mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 356])
            if not mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if bool(stor3[arg2][msg.sender].field_0):
        if bool(stor3[arg2][msg.sender].field_0) == uint255(stor3[arg2][msg.sender].field_1) < 32:
            revert with 0, 34
        if arg1.length:
            stor3[arg2][msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3[arg2][msg.sender].field_0 = 0
            idx = 0
            while uint255(stor3[arg2][msg.sender].field_1) + 31 / 32 > idx:
                stor3[arg2][msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor3[arg2][msg.sender].field_0) == stor3[arg2][msg.sender].field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor3[arg2][msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3[arg2][msg.sender].field_0 = 0
            idx = 0
            while stor3[arg2][msg.sender].field_1 % 128 + 31 / 32 > idx:
                stor3[arg2][msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    uint8(stor3[arg2][msg.sender].field_256) = 1
    emit 0x43333c02: msg.sender, sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
}



}
