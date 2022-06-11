contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
uint256 stor10;
address owner;
address sub_e5ed07ffAddress;
address stor13;
address sub_caa79c26Address;
address stor15;
address sub_c2c8a89fAddress;
address stor17;
address sub_fe4bcc22Address;
address stor19;
address sub_af4ac236Address;
address stor21;
mapping of uint256 stor22;
mapping of uint256 stor23;
mapping of uint256 stor24;
mapping of uint256 stor26;
uint256 nextTokenId;
uint256 sub_ab460a86;
uint256 sub_b077fd4d;
uint256 sub_34571d9e;
uint256 sub_9665ac0c;
uint256 sub_4879aa45;
uint256 sub_9b69b813;
uint256 stor1EDE;
uint256 stor2316;
uint256 stor3986;
uint256 stor449E;
uint256 stor5CE0;
uint256 stor6F67;
uint256 storC43E;
uint256 storCDF1;
uint256 storD2AC;
uint256 storFC94;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_34571d9e(?) payable {
    return sub_34571d9e
}

function sub_4879aa45(?) payable {
    return sub_4879aa45
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function nextTokenId() payable {
    return nextTokenId
}

function owner() payable {
    return owner
}

function sub_9665ac0c(?) payable {
    return sub_9665ac0c
}

function sub_9b69b813(?) payable {
    return sub_9b69b813
}

function sub_ab460a86(?) payable {
    return sub_ab460a86
}

function sub_af4ac236(?) payable {
    return sub_af4ac236Address
}

function sub_b077fd4d(?) payable {
    return sub_b077fd4d
}

function sub_c2c8a89f(?) payable {
    return sub_c2c8a89fAddress
}

function sub_caa79c26(?) payable {
    return sub_caa79c26Address
}

function sub_e5ed07ff(?) payable {
    return sub_e5ed07ffAddress
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_fe4bcc22(?) payable {
    return sub_fe4bcc22Address
}

function _fallback() payable {
    revert
}

function sub_13d65d29(?) payable {
    require calldata.size - 4 >= 32
    if arg1 < 10^6:
        return 130
    if arg1 >= 10 * 10^6:
        return 100
    return 110
}

function sub_61bc9d27(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < stor22[arg1]:
        revert with 0, 17
    return (block.timestamp - stor22[arg1])
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_d9c96502(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    return (block.timestamp - stor23[arg1])
}

function sub_ea2a6134(?) payable {
    require calldata.size - 4 >= 32
    if not stor24[arg1]:
        return 'Wheat Farm', 0
    if stor24[arg1] != 1:
        return 'gSeed Farm', 0
    return 'Sugarcan', 0
}

function sub_cf733243(?) payable {
    require calldata.size - 4 >= 32
    if stor24[arg1]:
        if stor24[arg1] != 1:
            return '', 0
        else:
            return '', 0
    else:
        return '', 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_975350be(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < stor22[arg1]:
        revert with 0, 17
    if block.timestamp - stor22[arg1] >= sub_b077fd4d:
        return 0
    if block.timestamp < stor22[arg1]:
        revert with 0, 17
    if sub_b077fd4d < block.timestamp - stor22[arg1]:
        revert with 0, 17
    return (sub_b077fd4d - block.timestamp + stor22[arg1])
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_d27277b3(?) payable {
    if stor5CE0 and sub_9665ac0c > -1 / stor5CE0:
        revert with 0, 17
    if stor5CE0 * sub_9665ac0c and 130 > -1 / stor5CE0 * sub_9665ac0c:
        revert with 0, 17
    if storC43E and sub_9665ac0c > -1 / storC43E:
        revert with 0, 17
    if storC43E * sub_9665ac0c and 110 > -1 / storC43E * sub_9665ac0c:
        revert with 0, 17
    if stor449E and sub_9665ac0c > -1 / stor449E:
        revert with 0, 17
    if 130 * stor5CE0 * sub_9665ac0c / 100 > !(110 * storC43E * sub_9665ac0c / 100):
        revert with 0, 17
    if (130 * stor5CE0 * sub_9665ac0c / 100) + (110 * storC43E * sub_9665ac0c / 100) > !(stor449E * sub_9665ac0c):
        revert with 0, 17
    return ((130 * stor5CE0 * sub_9665ac0c / 100) + (110 * storC43E * sub_9665ac0c / 100) + (stor449E * sub_9665ac0c))
}

function sub_fd8e3e63(?) payable {
    if stor2316 and sub_34571d9e > -1 / stor2316:
        revert with 0, 17
    if stor2316 * sub_34571d9e and 130 > -1 / stor2316 * sub_34571d9e:
        revert with 0, 17
    if stor3986 and sub_34571d9e > -1 / stor3986:
        revert with 0, 17
    if stor3986 * sub_34571d9e and 110 > -1 / stor3986 * sub_34571d9e:
        revert with 0, 17
    if stor1EDE and sub_34571d9e > -1 / stor1EDE:
        revert with 0, 17
    if 130 * stor2316 * sub_34571d9e / 100 > !(110 * stor3986 * sub_34571d9e / 100):
        revert with 0, 17
    if (130 * stor2316 * sub_34571d9e / 100) + (110 * stor3986 * sub_34571d9e / 100) > !(stor1EDE * sub_34571d9e):
        revert with 0, 17
    return ((130 * stor2316 * sub_34571d9e / 100) + (110 * stor3986 * sub_34571d9e / 100) + (stor1EDE * sub_34571d9e))
}

function sub_ae91ef6c(?) payable {
    if stor26[132] and sub_4879aa45 > -1 / stor26[132]:
        revert with 0, 17
    if stor26[132] * sub_4879aa45 and 130 > -1 / stor26[132] * sub_4879aa45:
        revert with 0, 17
    if stor26[112] and sub_4879aa45 > -1 / stor26[112]:
        revert with 0, 17
    if stor26[112] * sub_4879aa45 and 110 > -1 / stor26[112] * sub_4879aa45:
        revert with 0, 17
    if storCDF1 and sub_4879aa45 > -1 / storCDF1:
        revert with 0, 17
    if 130 * stor26[132] * sub_4879aa45 / 100 > !(110 * stor26[112] * sub_4879aa45 / 100):
        revert with 0, 17
    if (130 * stor26[132] * sub_4879aa45 / 100) + (110 * stor26[112] * sub_4879aa45 / 100) > !(storCDF1 * sub_4879aa45):
        revert with 0, 17
    return ((130 * stor26[132] * sub_4879aa45 / 100) + (110 * stor26[112] * sub_4879aa45 / 100) + (storCDF1 * sub_4879aa45))
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_be4af16b(?) payable {
    require calldata.size - 4 >= 32
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    require ext_code.size(stor21)
    staticcall stor21.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_ab460a86:
        revert with 0, 'Must increase water allowance'
    stor22[arg1] = block.timestamp
    require ext_code.size(stor21)
    call stor21.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, sub_ab460a86
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor10 = 1
}

function sub_b9f67a13(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < stor22[arg1]:
        revert with 0, 17
    if block.timestamp - stor22[arg1] >= sub_b077fd4d:
        if 0 > sub_b077fd4d:
            return 100
    else:
        if block.timestamp < stor22[arg1]:
            revert with 0, 17
        if sub_b077fd4d < block.timestamp - stor22[arg1]:
            revert with 0, 17
        if sub_b077fd4d - block.timestamp + stor22[arg1] > sub_b077fd4d:
            return 100
    if block.timestamp < stor22[arg1]:
        revert with 0, 17
    if block.timestamp - stor22[arg1] >= sub_b077fd4d:
        if not sub_b077fd4d:
            revert with 0, 18
        return (0 / sub_b077fd4d)
    if block.timestamp < stor22[arg1]:
        revert with 0, 17
    if sub_b077fd4d < block.timestamp - stor22[arg1]:
        revert with 0, 17
    if sub_b077fd4d - block.timestamp + stor22[arg1] and 100 > -1 / sub_b077fd4d - block.timestamp + stor22[arg1]:
        revert with 0, 17
    if not sub_b077fd4d:
        revert with 0, 18
    return ((100 * sub_b077fd4d) - (100 * block.timestamp) + (100 * stor22[arg1]) / sub_b077fd4d)
}

function sub_e46ddcb1(?) payable {
    require calldata.size - 4 >= 32
    if stor24[arg1]:
        revert with 0, 'not a wheat farm'
    if sub_b077fd4d > 0x9d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d8:
        revert with 0, 17
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] > 26 * sub_b077fd4d:
        if sub_34571d9e and 7 > -1 / sub_34571d9e:
            revert with 0, 17
        if 7 * sub_34571d9e and 26 > -1 / 7 * sub_34571d9e:
            revert with 0, 17
        if arg1 < 10^6:
            if 182 * sub_34571d9e and 130 > -1 / 182 * sub_34571d9e:
                revert with 0, 17
            return (23660 * sub_34571d9e / 100)
        if arg1 >= 10 * 10^6:
            if 182 * sub_34571d9e and 100 > -1 / 182 * sub_34571d9e:
                revert with 0, 17
            return (18200 * sub_34571d9e / 100)
        if 182 * sub_34571d9e and 110 > -1 / 182 * sub_34571d9e:
            revert with 0, 17
        return (20020 * sub_34571d9e / 100)
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if sub_34571d9e and 7 > -1 / sub_34571d9e:
        revert with 0, 17
    if 7 * sub_34571d9e and block.timestamp - stor23[arg1] > -1 / 7 * sub_34571d9e:
        revert with 0, 17
    if not sub_b077fd4d:
        revert with 0, 18
    if arg1 < 10^6:
        if (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d and 130 > -1 / (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d:
            revert with 0, 17
        return (130 * (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d / 100)
    if arg1 >= 10 * 10^6:
        if (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d and 100 > -1 / (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d:
            revert with 0, 17
        return (100 * (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d / 100)
    if (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d and 110 > -1 / (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d:
        revert with 0, 17
    return (110 * (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d / 100)
}

function sub_598684b2(?) payable {
    require calldata.size - 4 >= 32
    if stor24[arg1] != 2:
        revert with 0, 'not a gseed farm'
    if sub_b077fd4d > 0x9d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d8:
        revert with 0, 17
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] > 26 * sub_b077fd4d:
        if sub_4879aa45 and 7 > -1 / sub_4879aa45:
            revert with 0, 17
        if 7 * sub_4879aa45 and 26 > -1 / 7 * sub_4879aa45:
            revert with 0, 17
        if arg1 < 10^6:
            if 182 * sub_4879aa45 and 130 > -1 / 182 * sub_4879aa45:
                revert with 0, 17
            return (23660 * sub_4879aa45 / 100)
        if arg1 >= 10 * 10^6:
            if 182 * sub_4879aa45 and 100 > -1 / 182 * sub_4879aa45:
                revert with 0, 17
            return (18200 * sub_4879aa45 / 100)
        if 182 * sub_4879aa45 and 110 > -1 / 182 * sub_4879aa45:
            revert with 0, 17
        return (20020 * sub_4879aa45 / 100)
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if sub_4879aa45 and 7 > -1 / sub_4879aa45:
        revert with 0, 17
    if 7 * sub_4879aa45 and block.timestamp - stor23[arg1] > -1 / 7 * sub_4879aa45:
        revert with 0, 17
    if not sub_b077fd4d:
        revert with 0, 18
    if arg1 < 10^6:
        if (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d and 130 > -1 / (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d:
            revert with 0, 17
        return (130 * (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d / 100)
    if arg1 >= 10 * 10^6:
        if (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d and 100 > -1 / (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d:
            revert with 0, 17
        return (100 * (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d / 100)
    if (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d and 110 > -1 / (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d:
        revert with 0, 17
    return (110 * (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d / 100)
}

function sub_f7bb2dc3(?) payable {
    require calldata.size - 4 >= 32
    if stor24[arg1] != 1:
        revert with 0, 'not a sugarcane farm'
    if sub_b077fd4d > 0x9d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d8:
        revert with 0, 17
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] > 26 * sub_b077fd4d:
        if sub_9665ac0c and 7 > -1 / sub_9665ac0c:
            revert with 0, 17
        if 7 * sub_9665ac0c and 26 > -1 / 7 * sub_9665ac0c:
            revert with 0, 17
        if arg1 < 10^6:
            if 182 * sub_9665ac0c and 130 > -1 / 182 * sub_9665ac0c:
                revert with 0, 17
            return (23660 * sub_9665ac0c / 100)
        if arg1 >= 10 * 10^6:
            if 182 * sub_9665ac0c and 100 > -1 / 182 * sub_9665ac0c:
                revert with 0, 17
            return (18200 * sub_9665ac0c / 100)
        if 182 * sub_9665ac0c and 110 > -1 / 182 * sub_9665ac0c:
            revert with 0, 17
        return (20020 * sub_9665ac0c / 100)
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if sub_9665ac0c and 7 > -1 / sub_9665ac0c:
        revert with 0, 17
    if 7 * sub_9665ac0c and block.timestamp - stor23[arg1] > -1 / 7 * sub_9665ac0c:
        revert with 0, 17
    if not sub_b077fd4d:
        revert with 0, 18
    if arg1 < 10^6:
        if (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d and 130 > -1 / (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d:
            revert with 0, 17
        return (130 * (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d / 100)
    if arg1 >= 10 * 10^6:
        if (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d and 100 > -1 / (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d:
            revert with 0, 17
        return (100 * (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d / 100)
    if (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d and 110 > -1 / (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d:
        revert with 0, 17
    return (110 * (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d / 100)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_e7b1e0aa(?) payable {
    require calldata.size - 4 >= 32
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if stor24[arg1]:
        revert with 0, 'not a wheat farm'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'you do not own this farm'
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] <= 1800:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only harvest once every 30 minutes'
    if block.timestamp < stor22[arg1]:
        revert with 0, 17
    if block.timestamp - stor22[arg1] >= sub_b077fd4d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'your farm has not been watered recently'
    if block.timestamp < stor22[arg1]:
        revert with 0, 17
    if sub_b077fd4d < block.timestamp - stor22[arg1]:
        revert with 0, 17
    if sub_b077fd4d - block.timestamp + stor22[arg1] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'your farm has not been watered recently'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if stor24[arg1]:
        revert with 0, 'not a wheat farm'
    if sub_b077fd4d > 0x9d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d8:
        revert with 0, 17
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] > 26 * sub_b077fd4d:
        if sub_34571d9e and 7 > -1 / sub_34571d9e:
            revert with 0, 17
        if 7 * sub_34571d9e and 26 > -1 / 7 * sub_34571d9e:
            revert with 0, 17
        if arg1 < 10^6:
            if 182 * sub_34571d9e and 130 > -1 / 182 * sub_34571d9e:
                revert with 0, 17
            require ext_code.size(stor13)
            call stor13.0x40c10f19 with:
                 gas gas_remaining wei
                args ownerOf[arg1], 23660 * sub_34571d9e / 100
        else:
            if arg1 >= 10 * 10^6:
                if 182 * sub_34571d9e and 100 > -1 / 182 * sub_34571d9e:
                    revert with 0, 17
                require ext_code.size(stor13)
                call stor13.0x40c10f19 with:
                     gas gas_remaining wei
                    args ownerOf[arg1], 18200 * sub_34571d9e / 100
            else:
                if 182 * sub_34571d9e and 110 > -1 / 182 * sub_34571d9e:
                    revert with 0, 17
                require ext_code.size(stor13)
                call stor13.0x40c10f19 with:
                     gas gas_remaining wei
                    args ownerOf[arg1], 20020 * sub_34571d9e / 100
    else:
        if block.timestamp < stor23[arg1]:
            revert with 0, 17
        if sub_34571d9e and 7 > -1 / sub_34571d9e:
            revert with 0, 17
        if 7 * sub_34571d9e and block.timestamp - stor23[arg1] > -1 / 7 * sub_34571d9e:
            revert with 0, 17
        if not sub_b077fd4d:
            revert with 0, 18
        if arg1 < 10^6:
            if (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d and 130 > -1 / (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d:
                revert with 0, 17
            require ext_code.size(stor13)
            call stor13.0x40c10f19 with:
                 gas gas_remaining wei
                args ownerOf[arg1], 130 * (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d / 100
        else:
            if arg1 >= 10 * 10^6:
                if (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d and 100 > -1 / (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d:
                    revert with 0, 17
                require ext_code.size(stor13)
                call stor13.0x40c10f19 with:
                     gas gas_remaining wei
                    args ownerOf[arg1], 100 * (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d / 100
            else:
                if (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d and 110 > -1 / (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d:
                    revert with 0, 17
                require ext_code.size(stor13)
                call stor13.0x40c10f19 with:
                     gas gas_remaining wei
                    args ownerOf[arg1], 110 * (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor23[arg1] = block.timestamp
    stor10 = 1
}

function sub_97d1ef3e(?) payable {
    require calldata.size - 4 >= 32
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if stor24[arg1] != 2:
        revert with 0, 'not a gseed farm'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'you do not own this farm'
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] <= 1800:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only harvest once every 30 minutes'
    if block.timestamp < stor22[arg1]:
        revert with 0, 17
    if block.timestamp - stor22[arg1] >= sub_b077fd4d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'your farm has not been watered recently'
    if block.timestamp < stor22[arg1]:
        revert with 0, 17
    if sub_b077fd4d < block.timestamp - stor22[arg1]:
        revert with 0, 17
    if sub_b077fd4d - block.timestamp + stor22[arg1] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'your farm has not been watered recently'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if stor24[arg1] != 2:
        revert with 0, 'not a gseed farm'
    if sub_b077fd4d > 0x9d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d8:
        revert with 0, 17
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] > 26 * sub_b077fd4d:
        if sub_4879aa45 and 7 > -1 / sub_4879aa45:
            revert with 0, 17
        if 7 * sub_4879aa45 and 26 > -1 / 7 * sub_4879aa45:
            revert with 0, 17
        if arg1 < 10^6:
            if 182 * sub_4879aa45 and 130 > -1 / 182 * sub_4879aa45:
                revert with 0, 17
            require ext_code.size(stor17)
            call stor17.0x40c10f19 with:
                 gas gas_remaining wei
                args ownerOf[arg1], 23660 * sub_4879aa45 / 100
        else:
            if arg1 >= 10 * 10^6:
                if 182 * sub_4879aa45 and 100 > -1 / 182 * sub_4879aa45:
                    revert with 0, 17
                require ext_code.size(stor17)
                call stor17.0x40c10f19 with:
                     gas gas_remaining wei
                    args ownerOf[arg1], 18200 * sub_4879aa45 / 100
            else:
                if 182 * sub_4879aa45 and 110 > -1 / 182 * sub_4879aa45:
                    revert with 0, 17
                require ext_code.size(stor17)
                call stor17.0x40c10f19 with:
                     gas gas_remaining wei
                    args ownerOf[arg1], 20020 * sub_4879aa45 / 100
    else:
        if block.timestamp < stor23[arg1]:
            revert with 0, 17
        if sub_4879aa45 and 7 > -1 / sub_4879aa45:
            revert with 0, 17
        if 7 * sub_4879aa45 and block.timestamp - stor23[arg1] > -1 / 7 * sub_4879aa45:
            revert with 0, 17
        if not sub_b077fd4d:
            revert with 0, 18
        if arg1 < 10^6:
            if (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d and 130 > -1 / (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d:
                revert with 0, 17
            require ext_code.size(stor17)
            call stor17.0x40c10f19 with:
                 gas gas_remaining wei
                args ownerOf[arg1], 130 * (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d / 100
        else:
            if arg1 >= 10 * 10^6:
                if (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d and 100 > -1 / (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d:
                    revert with 0, 17
                require ext_code.size(stor17)
                call stor17.0x40c10f19 with:
                     gas gas_remaining wei
                    args ownerOf[arg1], 100 * (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d / 100
            else:
                if (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d and 110 > -1 / (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d:
                    revert with 0, 17
                require ext_code.size(stor17)
                call stor17.0x40c10f19 with:
                     gas gas_remaining wei
                    args ownerOf[arg1], 110 * (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor23[arg1] = block.timestamp
    stor10 = 1
}

function sub_fd1c8224(?) payable {
    require calldata.size - 4 >= 32
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if stor24[arg1] != 1:
        revert with 0, 'not a cane farm'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'you do not own this farm'
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] <= 1800:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only harvest once every 30 minutes'
    if block.timestamp < stor22[arg1]:
        revert with 0, 17
    if block.timestamp - stor22[arg1] >= sub_b077fd4d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'your farm has not been watered recently'
    if block.timestamp < stor22[arg1]:
        revert with 0, 17
    if sub_b077fd4d < block.timestamp - stor22[arg1]:
        revert with 0, 17
    if sub_b077fd4d - block.timestamp + stor22[arg1] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'your farm has not been watered recently'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if stor24[arg1] != 1:
        revert with 0, 'not a sugarcane farm'
    if sub_b077fd4d > 0x9d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d8:
        revert with 0, 17
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] > 26 * sub_b077fd4d:
        if sub_9665ac0c and 7 > -1 / sub_9665ac0c:
            revert with 0, 17
        if 7 * sub_9665ac0c and 26 > -1 / 7 * sub_9665ac0c:
            revert with 0, 17
        if arg1 < 10^6:
            if 182 * sub_9665ac0c and 130 > -1 / 182 * sub_9665ac0c:
                revert with 0, 17
            require ext_code.size(stor15)
            call stor15.0x40c10f19 with:
                 gas gas_remaining wei
                args ownerOf[arg1], 23660 * sub_9665ac0c / 100
        else:
            if arg1 >= 10 * 10^6:
                if 182 * sub_9665ac0c and 100 > -1 / 182 * sub_9665ac0c:
                    revert with 0, 17
                require ext_code.size(stor15)
                call stor15.0x40c10f19 with:
                     gas gas_remaining wei
                    args ownerOf[arg1], 18200 * sub_9665ac0c / 100
            else:
                if 182 * sub_9665ac0c and 110 > -1 / 182 * sub_9665ac0c:
                    revert with 0, 17
                require ext_code.size(stor15)
                call stor15.0x40c10f19 with:
                     gas gas_remaining wei
                    args ownerOf[arg1], 20020 * sub_9665ac0c / 100
    else:
        if block.timestamp < stor23[arg1]:
            revert with 0, 17
        if sub_9665ac0c and 7 > -1 / sub_9665ac0c:
            revert with 0, 17
        if 7 * sub_9665ac0c and block.timestamp - stor23[arg1] > -1 / 7 * sub_9665ac0c:
            revert with 0, 17
        if not sub_b077fd4d:
            revert with 0, 18
        if arg1 < 10^6:
            if (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d and 130 > -1 / (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d:
                revert with 0, 17
            require ext_code.size(stor15)
            call stor15.0x40c10f19 with:
                 gas gas_remaining wei
                args ownerOf[arg1], 130 * (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d / 100
        else:
            if arg1 >= 10 * 10^6:
                if (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d and 100 > -1 / (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d:
                    revert with 0, 17
                require ext_code.size(stor15)
                call stor15.0x40c10f19 with:
                     gas gas_remaining wei
                    args ownerOf[arg1], 100 * (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d / 100
            else:
                if (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d and 110 > -1 / (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d:
                    revert with 0, 17
                require ext_code.size(stor15)
                call stor15.0x40c10f19 with:
                     gas gas_remaining wei
                    args ownerOf[arg1], 110 * (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor23[arg1] = block.timestamp
    stor10 = 1
}

function sub_141c8284(?) payable {
    require calldata.size - 4 >= 32
    if stor24[arg1]:
        revert with 0, 'not a wheat farm'
    if sub_b077fd4d > 0x9d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d8:
        revert with 0, 17
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] > 26 * sub_b077fd4d:
        if sub_34571d9e and 7 > -1 / sub_34571d9e:
            revert with 0, 17
        if 7 * sub_34571d9e and 26 > -1 / 7 * sub_34571d9e:
            revert with 0, 17
        if arg1 < 10^6:
            if 182 * sub_34571d9e and 130 > -1 / 182 * sub_34571d9e:
                revert with 0, 17
            if 23660 * sub_34571d9e / 100 <= 10^18:
                return 0
        else:
            if arg1 >= 10 * 10^6:
                if 182 * sub_34571d9e and 100 > -1 / 182 * sub_34571d9e:
                    revert with 0, 17
                if 18200 * sub_34571d9e / 100 <= 10^18:
                    return 0
            else:
                if 182 * sub_34571d9e and 110 > -1 / 182 * sub_34571d9e:
                    revert with 0, 17
                if 20020 * sub_34571d9e / 100 <= 10^18:
                    return 0
    else:
        if block.timestamp < stor23[arg1]:
            revert with 0, 17
        if sub_34571d9e and 7 > -1 / sub_34571d9e:
            revert with 0, 17
        if 7 * sub_34571d9e and block.timestamp - stor23[arg1] > -1 / 7 * sub_34571d9e:
            revert with 0, 17
        if not sub_b077fd4d:
            revert with 0, 18
        if arg1 < 10^6:
            if (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d and 130 > -1 / (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d:
                revert with 0, 17
            if 130 * (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d / 100 <= 10^18:
                return 0
        else:
            if arg1 >= 10 * 10^6:
                if (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d and 100 > -1 / (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d:
                    revert with 0, 17
                if 100 * (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d / 100 <= 10^18:
                    return 0
            else:
                if (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d and 110 > -1 / (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d:
                    revert with 0, 17
                if 110 * (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d / 100 <= 10^18:
                    return 0
    if stor24[arg1]:
        revert with 0, 'not a wheat farm'
    if sub_b077fd4d > 0x9d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d8:
        revert with 0, 17
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] > 26 * sub_b077fd4d:
        if sub_34571d9e and 7 > -1 / sub_34571d9e:
            revert with 0, 17
        if 7 * sub_34571d9e and 26 > -1 / 7 * sub_34571d9e:
            revert with 0, 17
        if arg1 < 10^6:
            if 182 * sub_34571d9e and 130 > -1 / 182 * sub_34571d9e:
                revert with 0, 17
            return (23660 * sub_34571d9e / 100 / 10^18)
        if arg1 >= 10 * 10^6:
            if 182 * sub_34571d9e and 100 > -1 / 182 * sub_34571d9e:
                revert with 0, 17
            return (18200 * sub_34571d9e / 100 / 10^18)
        if 182 * sub_34571d9e and 110 > -1 / 182 * sub_34571d9e:
            revert with 0, 17
        return (20020 * sub_34571d9e / 100 / 10^18)
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if sub_34571d9e and 7 > -1 / sub_34571d9e:
        revert with 0, 17
    if 7 * sub_34571d9e and block.timestamp - stor23[arg1] > -1 / 7 * sub_34571d9e:
        revert with 0, 17
    if not sub_b077fd4d:
        revert with 0, 18
    if arg1 < 10^6:
        if (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d and 130 > -1 / (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d:
            revert with 0, 17
        return (130 * (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d / 100 / 10^18)
    if arg1 >= 10 * 10^6:
        if (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d and 100 > -1 / (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d:
            revert with 0, 17
        return (100 * (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d / 100 / 10^18)
    if (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d and 110 > -1 / (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d:
        revert with 0, 17
    return (110 * (7 * block.timestamp * sub_34571d9e) - (7 * stor23[arg1] * sub_34571d9e) / sub_b077fd4d / 100 / 10^18)
}

function sub_40566af1(?) payable {
    require calldata.size - 4 >= 32
    if stor24[arg1] != 2:
        revert with 0, 'not a gseed farm'
    if sub_b077fd4d > 0x9d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d8:
        revert with 0, 17
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] > 26 * sub_b077fd4d:
        if sub_4879aa45 and 7 > -1 / sub_4879aa45:
            revert with 0, 17
        if 7 * sub_4879aa45 and 26 > -1 / 7 * sub_4879aa45:
            revert with 0, 17
        if arg1 < 10^6:
            if 182 * sub_4879aa45 and 130 > -1 / 182 * sub_4879aa45:
                revert with 0, 17
            if 23660 * sub_4879aa45 / 100 <= 10^18:
                return 0
        else:
            if arg1 >= 10 * 10^6:
                if 182 * sub_4879aa45 and 100 > -1 / 182 * sub_4879aa45:
                    revert with 0, 17
                if 18200 * sub_4879aa45 / 100 <= 10^18:
                    return 0
            else:
                if 182 * sub_4879aa45 and 110 > -1 / 182 * sub_4879aa45:
                    revert with 0, 17
                if 20020 * sub_4879aa45 / 100 <= 10^18:
                    return 0
    else:
        if block.timestamp < stor23[arg1]:
            revert with 0, 17
        if sub_4879aa45 and 7 > -1 / sub_4879aa45:
            revert with 0, 17
        if 7 * sub_4879aa45 and block.timestamp - stor23[arg1] > -1 / 7 * sub_4879aa45:
            revert with 0, 17
        if not sub_b077fd4d:
            revert with 0, 18
        if arg1 < 10^6:
            if (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d and 130 > -1 / (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d:
                revert with 0, 17
            if 130 * (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d / 100 <= 10^18:
                return 0
        else:
            if arg1 >= 10 * 10^6:
                if (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d and 100 > -1 / (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d:
                    revert with 0, 17
                if 100 * (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d / 100 <= 10^18:
                    return 0
            else:
                if (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d and 110 > -1 / (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d:
                    revert with 0, 17
                if 110 * (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d / 100 <= 10^18:
                    return 0
    if stor24[arg1] != 2:
        revert with 0, 'not a gseed farm'
    if sub_b077fd4d > 0x9d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d8:
        revert with 0, 17
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] > 26 * sub_b077fd4d:
        if sub_4879aa45 and 7 > -1 / sub_4879aa45:
            revert with 0, 17
        if 7 * sub_4879aa45 and 26 > -1 / 7 * sub_4879aa45:
            revert with 0, 17
        if arg1 < 10^6:
            if 182 * sub_4879aa45 and 130 > -1 / 182 * sub_4879aa45:
                revert with 0, 17
            return (23660 * sub_4879aa45 / 100 / 10^18)
        if arg1 >= 10 * 10^6:
            if 182 * sub_4879aa45 and 100 > -1 / 182 * sub_4879aa45:
                revert with 0, 17
            return (18200 * sub_4879aa45 / 100 / 10^18)
        if 182 * sub_4879aa45 and 110 > -1 / 182 * sub_4879aa45:
            revert with 0, 17
        return (20020 * sub_4879aa45 / 100 / 10^18)
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if sub_4879aa45 and 7 > -1 / sub_4879aa45:
        revert with 0, 17
    if 7 * sub_4879aa45 and block.timestamp - stor23[arg1] > -1 / 7 * sub_4879aa45:
        revert with 0, 17
    if not sub_b077fd4d:
        revert with 0, 18
    if arg1 < 10^6:
        if (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d and 130 > -1 / (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d:
            revert with 0, 17
        return (130 * (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d / 100 / 10^18)
    if arg1 >= 10 * 10^6:
        if (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d and 100 > -1 / (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d:
            revert with 0, 17
        return (100 * (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d / 100 / 10^18)
    if (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d and 110 > -1 / (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d:
        revert with 0, 17
    return (110 * (7 * block.timestamp * sub_4879aa45) - (7 * stor23[arg1] * sub_4879aa45) / sub_b077fd4d / 100 / 10^18)
}

function sub_41ae0e73(?) payable {
    require calldata.size - 4 >= 32
    if stor24[arg1] != 1:
        revert with 0, 'not a sugarcane farm'
    if sub_b077fd4d > 0x9d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d8:
        revert with 0, 17
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] > 26 * sub_b077fd4d:
        if sub_9665ac0c and 7 > -1 / sub_9665ac0c:
            revert with 0, 17
        if 7 * sub_9665ac0c and 26 > -1 / 7 * sub_9665ac0c:
            revert with 0, 17
        if arg1 < 10^6:
            if 182 * sub_9665ac0c and 130 > -1 / 182 * sub_9665ac0c:
                revert with 0, 17
            if 23660 * sub_9665ac0c / 100 <= 10^18:
                return 0
        else:
            if arg1 >= 10 * 10^6:
                if 182 * sub_9665ac0c and 100 > -1 / 182 * sub_9665ac0c:
                    revert with 0, 17
                if 18200 * sub_9665ac0c / 100 <= 10^18:
                    return 0
            else:
                if 182 * sub_9665ac0c and 110 > -1 / 182 * sub_9665ac0c:
                    revert with 0, 17
                if 20020 * sub_9665ac0c / 100 <= 10^18:
                    return 0
    else:
        if block.timestamp < stor23[arg1]:
            revert with 0, 17
        if sub_9665ac0c and 7 > -1 / sub_9665ac0c:
            revert with 0, 17
        if 7 * sub_9665ac0c and block.timestamp - stor23[arg1] > -1 / 7 * sub_9665ac0c:
            revert with 0, 17
        if not sub_b077fd4d:
            revert with 0, 18
        if arg1 < 10^6:
            if (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d and 130 > -1 / (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d:
                revert with 0, 17
            if 130 * (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d / 100 <= 10^18:
                return 0
        else:
            if arg1 >= 10 * 10^6:
                if (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d and 100 > -1 / (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d:
                    revert with 0, 17
                if 100 * (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d / 100 <= 10^18:
                    return 0
            else:
                if (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d and 110 > -1 / (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d:
                    revert with 0, 17
                if 110 * (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d / 100 <= 10^18:
                    return 0
    if stor24[arg1] != 1:
        revert with 0, 'not a sugarcane farm'
    if sub_b077fd4d > 0x9d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d89d8:
        revert with 0, 17
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if block.timestamp - stor23[arg1] > 26 * sub_b077fd4d:
        if sub_9665ac0c and 7 > -1 / sub_9665ac0c:
            revert with 0, 17
        if 7 * sub_9665ac0c and 26 > -1 / 7 * sub_9665ac0c:
            revert with 0, 17
        if arg1 < 10^6:
            if 182 * sub_9665ac0c and 130 > -1 / 182 * sub_9665ac0c:
                revert with 0, 17
            return (23660 * sub_9665ac0c / 100 / 10^18)
        if arg1 >= 10 * 10^6:
            if 182 * sub_9665ac0c and 100 > -1 / 182 * sub_9665ac0c:
                revert with 0, 17
            return (18200 * sub_9665ac0c / 100 / 10^18)
        if 182 * sub_9665ac0c and 110 > -1 / 182 * sub_9665ac0c:
            revert with 0, 17
        return (20020 * sub_9665ac0c / 100 / 10^18)
    if block.timestamp < stor23[arg1]:
        revert with 0, 17
    if sub_9665ac0c and 7 > -1 / sub_9665ac0c:
        revert with 0, 17
    if 7 * sub_9665ac0c and block.timestamp - stor23[arg1] > -1 / 7 * sub_9665ac0c:
        revert with 0, 17
    if not sub_b077fd4d:
        revert with 0, 18
    if arg1 < 10^6:
        if (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d and 130 > -1 / (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d:
            revert with 0, 17
        return (130 * (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d / 100 / 10^18)
    if arg1 >= 10 * 10^6:
        if (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d and 100 > -1 / (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d:
            revert with 0, 17
        return (100 * (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d / 100 / 10^18)
    if (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d and 110 > -1 / (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d:
        revert with 0, 17
    return (110 * (7 * block.timestamp * sub_9665ac0c) - (7 * stor23[arg1] * sub_9665ac0c) / sub_b077fd4d / 100 / 10^18)
}

function sub_2034fdaf(?) payable {
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(stor19)
    staticcall stor19.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 100 * 10^18:
        revert with 0, 'Must increase acre allowance'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(stor21)
    staticcall stor21.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18:
        revert with 0, 'Must increase water allowance'
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = 57005
    mem[(2 * ceil32(return_data.size)) + 164] = sub_9b69b813
    require ext_code.size(stor19)
    call stor19.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, sub_9b69b813
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 132] = 57005
    mem[(4 * ceil32(return_data.size)) + 164] = sub_ab460a86
    require ext_code.size(stor21)
    call stor21.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, sub_ab460a86
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor23[stor27] = block.timestamp
    stor22[stor27] = block.timestamp
    stor24[stor27] = 2
    if stor6F67 == -1:
        revert with 0, 17
    stor6F67++
    if nextTokenId < 10^6:
        if stor26[132] == -1:
            revert with 0, 17
        stor26[132]++
    else:
        if nextTokenId >= 10 * 10^6:
            if stor26[102] == -1:
                revert with 0, 17
            stor26[102]++
        else:
            if stor26[112] == -1:
                revert with 0, 17
            stor26[112]++
    mem[(6 * ceil32(return_data.size)) + 96] = 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor27]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor27] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = nextTokenId
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = nextTokenId
            stor7[stor27] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor27] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor27]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor27]
        stor9[stor27] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor27] = msg.sender
    emit Transfer(0, msg.sender, nextTokenId);
    if ext_code.size(msg.sender):
        mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(6 * ceil32(return_data.size)) + 164] = 0
        mem[(6 * ceil32(return_data.size)) + 196] = nextTokenId
        mem[(6 * ceil32(return_data.size)) + 228] = 128
        mem[(6 * ceil32(return_data.size)) + 260] = 0
        mem[(6 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, nextTokenId, 128, 0
        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                if not ext_call.return_data[0]:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if nextTokenId == -1:
        revert with 0, 17
    nextTokenId++
    stor10 = 1
}

function sub_a545d330(?) payable {
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(stor19)
    staticcall stor19.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 100 * 10^18:
        revert with 0, 'Must increase acre allowance'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(stor21)
    staticcall stor21.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18:
        revert with 0, 'Must increase water allowance'
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = 57005
    mem[(2 * ceil32(return_data.size)) + 164] = sub_9b69b813
    require ext_code.size(stor19)
    call stor19.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, sub_9b69b813
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 132] = 57005
    mem[(4 * ceil32(return_data.size)) + 164] = sub_ab460a86
    require ext_code.size(stor21)
    call stor21.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, sub_ab460a86
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor23[stor27] = block.timestamp
    stor22[stor27] = block.timestamp
    stor24[stor27] = 1
    if storFC94 == -1:
        revert with 0, 17
    storFC94++
    if nextTokenId < 10^6:
        if stor26[131] == -1:
            revert with 0, 17
        stor26[131]++
    else:
        if nextTokenId >= 10 * 10^6:
            if stor26[101] == -1:
                revert with 0, 17
            stor26[101]++
        else:
            if stor26[111] == -1:
                revert with 0, 17
            stor26[111]++
    mem[(6 * ceil32(return_data.size)) + 96] = 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor27]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor27] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = nextTokenId
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = nextTokenId
            stor7[stor27] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor27] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor27]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor27]
        stor9[stor27] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor27] = msg.sender
    emit Transfer(0, msg.sender, nextTokenId);
    if ext_code.size(msg.sender):
        mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(6 * ceil32(return_data.size)) + 164] = 0
        mem[(6 * ceil32(return_data.size)) + 196] = nextTokenId
        mem[(6 * ceil32(return_data.size)) + 228] = 128
        mem[(6 * ceil32(return_data.size)) + 260] = 0
        mem[(6 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, nextTokenId, 128, 0
        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                if not ext_call.return_data[0]:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if nextTokenId == -1:
        revert with 0, 17
    nextTokenId++
    stor10 = 1
}

function sub_d9f87a5e(?) payable {
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(stor19)
    staticcall stor19.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 100 * 10^18:
        revert with 0, 'Must increase acre allowance'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(stor21)
    staticcall stor21.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18:
        revert with 0, 'Must increase water allowance'
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = 57005
    mem[(2 * ceil32(return_data.size)) + 164] = sub_9b69b813
    require ext_code.size(stor19)
    call stor19.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, sub_9b69b813
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 132] = 57005
    mem[(4 * ceil32(return_data.size)) + 164] = sub_ab460a86
    require ext_code.size(stor21)
    call stor21.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, sub_ab460a86
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor23[stor27] = block.timestamp
    stor22[stor27] = block.timestamp
    stor24[stor27] = 0
    if storD2AC == -1:
        revert with 0, 17
    storD2AC++
    if nextTokenId < 10^6:
        if stor26[130] == -1:
            revert with 0, 17
        stor26[130]++
    else:
        if nextTokenId >= 10 * 10^6:
            if stor26[100] == -1:
                revert with 0, 17
            stor26[100]++
        else:
            if stor26[110] == -1:
                revert with 0, 17
            stor26[110]++
    mem[(6 * ceil32(return_data.size)) + 96] = 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor27]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor27] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = nextTokenId
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = nextTokenId
            stor7[stor27] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor27] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor27]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor27]
        stor9[stor27] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor27] = msg.sender
    emit Transfer(0, msg.sender, nextTokenId);
    if ext_code.size(msg.sender):
        mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(6 * ceil32(return_data.size)) + 164] = 0
        mem[(6 * ceil32(return_data.size)) + 196] = nextTokenId
        mem[(6 * ceil32(return_data.size)) + 228] = 128
        mem[(6 * ceil32(return_data.size)) + 260] = 0
        mem[(6 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, nextTokenId, 128, 0
        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                if not ext_call.return_data[0]:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if nextTokenId == -1:
        revert with 0, 17
    nextTokenId++
    stor10 = 1
}



}
