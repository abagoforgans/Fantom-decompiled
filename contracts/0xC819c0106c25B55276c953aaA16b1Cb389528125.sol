contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
address owner;
mapping of uint8 stor1;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor5;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
array of uint256 name;
array of uint256 symbol;
array of uint256 baseURI;
mapping of bool stor13;
uint8 paused;
address stor14;
address punkContractAddress; offset 8
mapping of address proxyInfo;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 44, code.data[10178 len 44], mem[208 len 20]
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 42, code.data[10051 len 42], mem[206 len 22]
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[9784 len 43], mem[207 len 21]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 44, code.data[10424 len 44], mem[208 len 20]
    return tokenByIndex[arg1]
}

function paused() payable {
    return bool(paused)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 41, code.data[10093 len 41], mem[205 len 23]
    return ownerOf[arg1]
}

function baseURI() payable {
    return baseURI[0 len baseURI.length]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 42, code.data[10051 len 42], mem[206 len 22]
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function proxyInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return proxyInfo[address(arg1)]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function punkContract() payable {
    return punkContractAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10222 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10222 len 32]
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10222 len 32]
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10222 len 32]
    baseURI[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10222 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[9877 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function registerProxy() payable {
    if proxyInfo[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 44, code.data[10134 len 44], mem[208 len 20]
    create contract with 0 wei
                    code: code.data[9256 len 483]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    proxyInfo[address(msg.sender)] = address(create.new_address)
    emit ProxyRegistered(msg.sender, address(create.new_address));
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 41, code.data[10093 len 41], mem[205 len 23]
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[10342 len 33], mem[197 len 31]
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 56, code.data[9995 len 56], mem[220 len 8]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(proxyInfo[address(msg.sender)])
    call proxyInfo[address(msg.sender)].transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor14, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'PunkWrapper: transfer fail'
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg1]:
        revert with 0, 'ERC721: token already minted'
    ownerOf[arg1] = msg.sender
    balanceOf[address(msg.sender)]++
    emit Transfer(0, msg.sender, arg1);
    stor7[arg1] = tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
    stor9[arg1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 44, code.data[9951 len 44], mem[208 len 20]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 41, code.data[10093 len 41], mem[205 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 44, code.data[10178 len 44], mem[208 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 49, code.data[10375 len 49], mem[213 len 15]
    if paused:
        revert with 0, 'Pausable: paused'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 41, code.data[10093 len 41], mem[205 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 41, code.data[10254 len 41], mem[205 len 23]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 36, code.data[9915 len 36], mem[200 len 28]
    if approved[arg3]:
        approved[arg3] = 0
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor7[arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 44, code.data[9951 len 44], mem[208 len 20]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 41, code.data[10093 len 41], mem[205 len 23]
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 44, code.data[10178 len 44], mem[208 len 20]
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 45, code.data[9739 len 45], mem[209 len 19]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 41, code.data[10093 len 41], mem[205 len 23]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 41, code.data[10093 len 41], mem[205 len 23]
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 37, code.data[10468 len 37], mem[201 len 27]
    if approved[arg1]:
        approved[arg1] = 0
    if 1 > balanceOf[stor2[arg1]]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if 1 > tokenOfOwnerByIndex[stor2[arg1]]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[stor2[arg1]] - 1 != stor7[arg1]:
        require tokenOfOwnerByIndex[stor2[arg1]] - 1 < tokenOfOwnerByIndex[stor2[arg1]]
        require stor7[arg1] < tokenOfOwnerByIndex[stor2[arg1]]
        tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][tokenOfOwnerByIndex[stor2[arg1]]]
        stor7[stor6[stor2[arg1]][stor6[stor2[arg1]]]] = stor7[arg1]
    tokenOfOwnerByIndex[stor2[arg1]]--
    if tokenOfOwnerByIndex[stor2[arg1]] > tokenOfOwnerByIndex[stor2[arg1]] - 1:
        idx = tokenOfOwnerByIndex[stor2[arg1]] - 1
        while tokenOfOwnerByIndex[stor2[arg1]] > idx:
            tokenOfOwnerByIndex[stor2[arg1]][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg1] = 0
    if 1 > tokenByIndex.length:
        revert with 0, 'SafeMath: subtraction overflow'
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor9[arg1] < tokenByIndex.length
    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
    stor9[stor8[stor8.length]] = stor9[arg1]
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor9[arg1] = 0
    if Mask(255, 1, uint256(stor13[arg1]) and (256 * not bool(stor13[arg1])) - 1):
        uint256(stor13[arg1]) = 0
        if 31 < stor13[arg1].length:
            idx = 0
            while stor13[arg1].length + 31 / 32 > idx:
                uint256(stor13[arg1][idx]) = 0
                idx = idx + 1
                continue 
    require ext_code.size(punkContractAddress)
    call punkContractAddress.transferPunk(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0, 32, 44, code.data[9951 len 44], mem[240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, code.data[10093 len 41], mem[237 len 23]
    if msg.sender == ownerOf[arg3]:
        if paused:
            revert with 0, 'Pausable: paused'
        if not ownerOf[arg3]:
            revert with 0, 32, 41, code.data[10093 len 41], mem[237 len 23]
        if ownerOf[arg3] != arg1:
            revert with 0, 32, 41, code.data[10254 len 41], mem[237 len 23]
        if not arg2:
            revert with 0, 32, 36, code.data[9915 len 36], mem[232 len 28]
        if not approved[arg3]:
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if tokenOfOwnerByIndex[address(arg1)] - 1 != stor7[arg3]:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
            tokenOfOwnerByIndex[address(arg1)]--
            if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[512 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[484 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 32, 50, code.data[9827 len 50], code.data[9841 len 14]
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                        require return_data.size >= 32
                        if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
            else:
                idx = tokenOfOwnerByIndex[address(arg1)] - 1
                while tokenOfOwnerByIndex[address(arg1)] > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx] = 0
                    idx = idx + 1
                    continue 
                stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[512 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[484 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        code.data[9827 len 50],
                                        Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                        require return_data.size >= 32
                        if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
        else:
            approved[arg3] = 0
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[512 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[484 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 32, 50, code.data[9827 len 50], code.data[9841 len 14]
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[512 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[484 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            code.data[9827 len 50],
                                            Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
            else:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[512 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[484 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            code.data[9827 len 50],
                                            Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[512 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[484 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 32, 50, code.data[9827 len 50], code.data[9841 len 14]
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
    else:
        if not ownerOf[arg3]:
            revert with 0, 32, 44, code.data[10178 len 44], mem[240 len 20]
        if approved[arg3] == msg.sender:
            if paused:
                revert with 0, 'Pausable: paused'
            if not ownerOf[arg3]:
                revert with 0, 32, 41, code.data[10093 len 41], mem[237 len 23]
            if ownerOf[arg3] != arg1:
                revert with 0, 32, 41, code.data[10254 len 41], mem[237 len 23]
            if not arg2:
                revert with 0, 32, 36, code.data[9915 len 36], mem[232 len 28]
            if not approved[arg3]:
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[512 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[484 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 32, 50, code.data[9827 len 50], code.data[9841 len 14]
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[512 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[484 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            code.data[9827 len 50],
                                            Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
            else:
                approved[arg3] = 0
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[512 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[484 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 
                                                32,
                                                50,
                                                code.data[9827 len 50],
                                                Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[512 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args 0, mem[484 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 32, 50, code.data[9827 len 50], code.data[9841 len 14]
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[512 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[484 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            code.data[9827 len 50],
                                            Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
        else:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 32, 49, code.data[10375 len 49], mem[245 len 15]
            if paused:
                revert with 0, 'Pausable: paused'
            if not ownerOf[arg3]:
                revert with 0, 32, 41, code.data[10093 len 41], mem[237 len 23]
            if ownerOf[arg3] != arg1:
                revert with 0, 32, 41, code.data[10254 len 41], mem[237 len 23]
            if not arg2:
                revert with 0, 32, 36, code.data[9915 len 36], mem[232 len 28]
            if not approved[arg3]:
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[512 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[484 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 32, 50, code.data[9827 len 50], code.data[9841 len 14]
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[512 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args 0, mem[484 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 32, 50, code.data[9827 len 50], code.data[9841 len 14]
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                                mem[512 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[484 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 
                                                32,
                                                50,
                                                code.data[9827 len 50],
                                                Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
            else:
                approved[arg3] = 0
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 != stor7[arg3]:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        mem[324 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[512 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[484 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        code.data[9827 len 50],
                                        Mask(112, -800, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 800
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
                        require return_data.size >= 32
                        if Mask(32, 224, mem[356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 50, code.data[9827 len 50], mem[ceil32(return_data.size) + 443 len 14]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not ownerOf[arg3]:
        revert with 0, 32, 44, code.data[9951 len 44], mem[ceil32(arg4.length) + 240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, code.data[10093 len 41], mem[ceil32(arg4.length) + 237 len 23]
    if msg.sender == ownerOf[arg3]:
        if paused:
            revert with 0, 'Pausable: paused'
        if not ownerOf[arg3]:
            revert with 0, 32, 41, code.data[10093 len 41], mem[ceil32(arg4.length) + 237 len 23]
        if ownerOf[arg3] != arg1:
            revert with 0, 32, 41, code.data[10254 len 41], mem[ceil32(arg4.length) + 237 len 23]
        if not arg2:
            revert with 0, 32, 36, code.data[9915 len 36], mem[ceil32(arg4.length) + 232 len 28]
        if not approved[arg3]:
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    mem[32] = 6
                    tokenOfOwnerByIndex[address(arg2)]++
                    mem[0] = sha3(address(arg2), 6)
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 164] = msg.sender
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg3
                            mem[ceil32(arg4.length) + 260] = 128
                            mem[ceil32(arg4.length) + 292] = arg4.length
                            mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                mem[64] = arg4.length + ceil32(arg4.length) + 324
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 356 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + ceil32(arg4.length) + 328 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                _1630 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _1630 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    mem[32] = 6
                    tokenOfOwnerByIndex[address(arg2)]++
                    mem[0] = sha3(address(arg2), 6)
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 164] = msg.sender
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg3
                            mem[ceil32(arg4.length) + 260] = 128
                            mem[ceil32(arg4.length) + 292] = arg4.length
                            mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                mem[64] = arg4.length + ceil32(arg4.length) + 324
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                _2988 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324])
                                call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + ceil32(arg4.length) + 328 len _2988 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 388 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
            else:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    mem[32] = 6
                    tokenOfOwnerByIndex[address(arg2)]++
                    mem[0] = sha3(address(arg2), 6)
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 164] = msg.sender
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg3
                            mem[ceil32(arg4.length) + 260] = 128
                            mem[ceil32(arg4.length) + 292] = arg4.length
                            mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                mem[64] = arg4.length + ceil32(arg4.length) + 324
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 356 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + ceil32(arg4.length) + 328 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                _1634 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _1634 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    mem[32] = 6
                    tokenOfOwnerByIndex[address(arg2)]++
                    mem[0] = sha3(address(arg2), 6)
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 164] = msg.sender
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg3
                            mem[ceil32(arg4.length) + 260] = 128
                            mem[ceil32(arg4.length) + 292] = arg4.length
                            mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                mem[64] = arg4.length + ceil32(arg4.length) + 324
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                _2995 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324])
                                call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + ceil32(arg4.length) + 328 len _2995 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                _3074 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _3074 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
        else:
            approved[arg3] = 0
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    mem[32] = 6
                    tokenOfOwnerByIndex[address(arg2)]++
                    mem[0] = sha3(address(arg2), 6)
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 164] = msg.sender
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg3
                            mem[ceil32(arg4.length) + 260] = 128
                            mem[ceil32(arg4.length) + 292] = arg4.length
                            mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                mem[64] = arg4.length + ceil32(arg4.length) + 324
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 356 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + ceil32(arg4.length) + 328 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                _1638 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _1638 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    mem[32] = 6
                    tokenOfOwnerByIndex[address(arg2)]++
                    mem[0] = sha3(address(arg2), 6)
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 164] = msg.sender
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg3
                            mem[ceil32(arg4.length) + 260] = 128
                            mem[ceil32(arg4.length) + 292] = arg4.length
                            mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                mem[64] = arg4.length + ceil32(arg4.length) + 324
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                _3002 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324])
                                call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + ceil32(arg4.length) + 328 len _3002 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 388 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
            else:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    mem[32] = 6
                    tokenOfOwnerByIndex[address(arg2)]++
                    mem[0] = sha3(address(arg2), 6)
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 164] = msg.sender
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg3
                            mem[ceil32(arg4.length) + 260] = 128
                            mem[ceil32(arg4.length) + 292] = arg4.length
                            mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                mem[64] = arg4.length + ceil32(arg4.length) + 324
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                _1585 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324])
                                call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + ceil32(arg4.length) + 328 len _1585 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 388 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    mem[32] = 6
                    tokenOfOwnerByIndex[address(arg2)]++
                    mem[0] = sha3(address(arg2), 6)
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 164] = msg.sender
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg3
                            mem[ceil32(arg4.length) + 260] = 128
                            mem[ceil32(arg4.length) + 292] = arg4.length
                            mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                mem[64] = arg4.length + ceil32(arg4.length) + 324
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 356 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                     gas gas_remaining wei
                                    args mem[arg4.length + ceil32(arg4.length) + 328 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                _3082 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                     gas gas_remaining wei
                                    args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _3082 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    code.data[9827 len 50],
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
    else:
        if not ownerOf[arg3]:
            revert with 0, 32, 44, code.data[10178 len 44], mem[ceil32(arg4.length) + 240 len 20]
        if approved[arg3] == msg.sender:
            if paused:
                revert with 0, 'Pausable: paused'
            if not ownerOf[arg3]:
                revert with 0, 32, 41, code.data[10093 len 41], mem[ceil32(arg4.length) + 237 len 23]
            if ownerOf[arg3] != arg1:
                revert with 0, 32, 41, code.data[10254 len 41], mem[ceil32(arg4.length) + 237 len 23]
            if not arg2:
                revert with 0, 32, 36, code.data[9915 len 36], mem[ceil32(arg4.length) + 232 len 28]
            if not approved[arg3]:
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 356 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _1646 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _1646 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 356 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 388 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _1595 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324])
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len _1595 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _1650 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _1650 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _3023 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324])
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len _3023 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _3090 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _3090 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
            else:
                approved[arg3] = 0
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _1600 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324])
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len _1600 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 388 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 356 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _3094 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _3094 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _1605 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324])
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len _1605 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _1658 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _1658 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _3037 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324])
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len _3037 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _3098 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _3098 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
        else:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 32, 49, code.data[10375 len 49], mem[ceil32(arg4.length) + 245 len 15]
            if paused:
                revert with 0, 'Pausable: paused'
            if not ownerOf[arg3]:
                revert with 0, 32, 41, code.data[10093 len 41], mem[ceil32(arg4.length) + 237 len 23]
            if ownerOf[arg3] != arg1:
                revert with 0, 32, 41, code.data[10254 len 41], mem[ceil32(arg4.length) + 237 len 23]
            if not arg2:
                revert with 0, 32, 36, code.data[9915 len 36], mem[ceil32(arg4.length) + 232 len 28]
            if not approved[arg3]:
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 356 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _1662 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _1662 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 356 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _3102 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _3102 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 356 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 388 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _3051 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324])
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len _3051 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 388 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
            else:
                approved[arg3] = 0
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _1620 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324])
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len _1620 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _1670 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _1670 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _3058 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324])
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len _3058 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 388 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _1625 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324])
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len _1625 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 388 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        mem[32] = 6
                        tokenOfOwnerByIndex[address(arg2)]++
                        mem[0] = sha3(address(arg2), 6)
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 164] = msg.sender
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg3
                                mem[ceil32(arg4.length) + 260] = 128
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                mem[ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[ceil32(arg4.length) + 128] = arg4.length + 164
                                    mem[64] = arg4.length + ceil32(arg4.length) + 324
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _3065 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[arg4.length + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[arg4.length + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 324])
                                    call arg2.mem[arg4.length + ceil32(arg4.length) + 324 len 4] with:
                                         gas gas_remaining wei
                                        args mem[arg4.length + ceil32(arg4.length) + 328 len _3065 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + 442 len 14]
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 356]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 443 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 196
                                    mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 356
                                    mem[ceil32(arg4.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(arg4.length) + 160 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
                                    _3114 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356] = mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 356])
                                    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 4] with:
                                         gas gas_remaining wei
                                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 360 len _3114 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 32, 50, code.data[9827 len 50], mem[floor32(arg4.length) + ceil32(arg4.length) + 474 len 14]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 388]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        code.data[9827 len 50],
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 475 len 14]
}



}
