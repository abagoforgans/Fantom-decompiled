contract main {




// =====================  Runtime code  =====================


address stor0;
address owner; offset 16
uint256 stor0; offset 16
uint16 stor1;
uint16 redeemFeeNumerator; offset 160
uint16 redeemFeeDenominator; offset 176
uint64 stor1; offset 192
address stor1;
address coverImplementationAddress;
address coverERC20ImplementationAddress;
address treasuryAddress;
address governanceAddress;
address claimManagerAddress;
array of struct stor8;
mapping of address protocols;

function protocolImplementation() payable {
    return protocolImplementationAddress
}

function redeemFeeNumerator() payable {
    return redeemFeeNumerator
}

function protocols(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return protocols[arg1]
}

function governance() payable {
    return governanceAddress
}

function treasury() payable {
    return treasuryAddress
}

function coverImplementation() payable {
    return coverImplementationAddress
}

function owner() payable {
    return owner
}

function coverERC20Implementation() payable {
    return coverERC20ImplementationAddress
}

function claimManager() payable {
    return claimManagerAddress
}

function redeemFeeDenominator() payable {
    return redeemFeeDenominator
}

function getProtocolsLength() payable {
    return stor8.length
}

function _fallback() payable {
    revert
}

function getRedeemFees() payable {
    return uint16(stor1.field_0), redeemFeeDenominator
}

function getProtocolAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return address(sha3(0, this.address, sha3(arg1), sha3(code.data[5959 len 1949])))
}

function getProtocolNameAndAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor8.length
    return stor8[arg1].field_0, protocols[stor8[arg1].field_0]
}

function claimOwnership() payable {
    if address(stor1.field_0) != msg.sender:
        revert with 0, 32, 32, code.data[8022 len 32]
    emit OwnershipTransferCompleted(owner, address(stor1.field_0));
    Mask(240, 0, stor0.field_16) = address(stor1.field_0)
}

function updateTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8022 len 32]
    if not arg1:
        revert with 0, 'COVER: address cannot be 0'
    treasuryAddress = arg1
    return 1
}

function updateClaimManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8022 len 32]
    if not arg1:
        revert with 0, 'COVER: address cannot be 0'
    claimManagerAddress = arg1
    return 1
}

function getCoverAddress(bytes32 arg1, uint48 arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    return address(sha3(0, address(sha3(0, this.address, sha3(arg1), sha3(code.data[5959 len 1949]))), sha3(arg1, arg2 % 281474976710656, arg3, arg4), sha3(code.data[5959 len 1949])))
}

function updateFees(uint16 arg1, uint16 arg2) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, 'COVER: caller not governance'
    if arg2 <= 0:
        revert with 0, 'COVER: denominator cannot be 0'
    redeemFeeNumerator = arg1
    redeemFeeDenominator = arg2
    uint64(stor1.field_192) = 0
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8022 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[7951 len 38], mem[202 len 26]
    emit OwnershipTransferInitiated(owner, arg1);
    address(stor1.field_0) = arg1
}

function updateGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'COVER: caller not governance'
    if not arg1:
        revert with 0, 'COVER: address cannot be 0'
    if arg1 == owner:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[7989 len 33], mem[197 len 31]
    governanceAddress = arg1
    return 1
}

function updateCoverImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8022 len 32]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[7908 len 43], mem[207 len 21]
    if not ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[7908 len 43], mem[207 len 21]
    coverImplementationAddress = arg1
    return 1
}

function updateProtocolImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8022 len 32]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[7908 len 43], mem[207 len 21]
    if not ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[7908 len 43], mem[207 len 21]
    protocolImplementationAddress = arg1
    return 1
}

function updateCoverERC20Implementation(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8022 len 32]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[7908 len 43], mem[207 len 21]
    if not ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[7908 len 43], mem[207 len 21]
    coverERC20ImplementationAddress = arg1
    return 1
}

function getCovTokenAddress(bytes32 arg1, uint48 arg2, address arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    mem[282 len 0] = None
    if not arg5:
        return address(sha3(0, address(sha3(0, address(sha3(0, this.address, sha3(arg1), sha3(code.data[5959 len 1949]))), sha3(arg1, arg2 % 281474976710656, arg3, arg4), sha3(code.data[5959 len 1949]))), sha3(arg1, arg2 % 281474976710656, arg3, arg4, mem[282 len 7]), sha3(code.data[5959 len 1949])))
    mem[282 len 0] = 0
    return address(sha3(0, address(sha3(0, address(sha3(0, this.address, sha3(arg1), sha3(code.data[5959 len 1949]))), sha3(arg1, arg2 % 281474976710656, arg3, arg4), sha3(code.data[5959 len 1949]))), sha3(arg1, arg2 % 281474976710656, arg3, arg4, mem[282 len 5]), sha3(code.data[5959 len 1949])))
}

function getAllProtocolAddresses() payable {
    if not stor8.length:
        require stor8.length <= test266151307()
        mem[(32 * stor8.length) + 128] = stor8.length
        if stor8.length:
            mem[(32 * stor8.length) + 160 len 32 * stor8.length] = call.data[calldata.size len 32 * stor8.length]
        idx = 0
        while idx < stor8.length:
            require idx < stor8.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            require idx < stor8.length
            mem[(32 * idx) + (32 * stor8.length) + 160] = protocols[mem[(32 * idx) + 128]]
            idx = idx + 1
            continue 
        mem[(64 * stor8.length) + 160] = 32
        mem[(64 * stor8.length) + 192] = stor8.length
        mem[(64 * stor8.length) + 224 len floor32(stor8.length)] = mem[(32 * stor8.length) + 160 len floor32(stor8.length)]
        return memory
          from (64 * stor8.length) + 160
           len (161 * stor8.length) + 64
    mem[128] = uint256(stor8.field_0)
    idx = 128
    s = 0
    while (32 * stor8.length) + 96 > idx:
        mem[idx + 32] = stor8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require stor8.length <= test266151307()
    mem[(32 * stor8.length) + 128] = stor8.length
    if stor8.length:
        mem[(32 * stor8.length) + 160 len 32 * stor8.length] = call.data[calldata.size len 32 * stor8.length]
    idx = 0
    while idx < stor8.length:
        require idx < stor8.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        require idx < stor8.length
        mem[(32 * idx) + (32 * stor8.length) + 160] = protocols[mem[(32 * idx) + 128]]
        idx = idx + 1
        continue 
    mem[(64 * stor8.length) + 160] = 32
    mem[(64 * stor8.length) + 192] = stor8.length
    mem[(64 * stor8.length) + 224 len floor32(stor8.length)] = mem[(32 * stor8.length) + 160 len floor32(stor8.length)]
    return Array(len=stor8.length, data=mem[(64 * stor8.length) + 224 len 32 * stor8.length])
}

function addProtocol(bytes32 arg1, bool arg2, address arg3, uint48[] arg4, bytes32[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8022 len 32]
    if protocols[arg1]:
        revert with 0, 'COVER: protocol exists'
    if arg5.length != arg4.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 36, code.data[8054 len 36], mem[200 len 28]
    stor8.length++
    stor8[stor8.length].field_0 = arg1
    if eth.balance(this.address) < 0:
        revert with 0, 'Create2: insufficient balance'
    create2 contract with 0 wei
                    salt: sha3(arg1)
                    code: code.data[5959 len 1949]
    if not address(create2.new_address):
        revert with 0, 'Create2: Failed on deploy'
    emit ProtocolInitiation(address(create2.new_address));
    mem[2372 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 2372] = 0
    mem[floor32(arg4.length) + 2372] = arg5.length
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
         gas gas_remaining wei
        args protocolImplementationAddress, address(stor0.field_0), Array(len=floor32(arg4.length) + floor32(arg5.length) + 228, data=Mask(8 * floor32(arg4.length) + floor32(arg5.length) + 228, -(8 * floor32(arg4.length) + floor32(arg5.length) + 228) + 256, unknown_0xb2cfb94d(?????), arg1, arg2, address(arg3), 160, floor32(arg4.length) + 192, arg4.length, mem[2372 len floor32(arg4.length) + 32], call.data[arg5 + 36 len floor32(arg5.length)], 0, stor2) << (8 * floor32(arg4.length) + floor32(arg5.length) + 228) - 256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    protocols[arg1] = address(create2.new_address)
    return address(create2.new_address)
}



}
