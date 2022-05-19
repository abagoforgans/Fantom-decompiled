contract main {




// =====================  Runtime code  =====================


const version = 101


address owner;
address feeTokenAddress;
address feeWalletAddress;
address sub_38c2f5c6Address;
uint256 feeAmount;
uint256 burnPercent;
uint256 divider;
uint256 feeFundsPercent;
mapping of struct sub_c9991da0;

function burnPercent() payable {
    return burnPercent
}

function divider() payable {
    return divider
}

function sub_38c2f5c6(?) payable {
    return sub_38c2f5c6Address
}

function feeToken() payable {
    return feeTokenAddress
}

function feeAmount() payable {
    return feeAmount
}

function owner() payable {
    return owner
}

function feeFundsPercent() payable {
    return feeFundsPercent
}

function sub_c9991da0(?) payable {
    require calldata.size - 4 >= 32
    return sub_c9991da0[arg1].field_0, 
           sub_c9991da0[arg1].field_256,
           sub_c9991da0[arg1].field_512,
           sub_c9991da0[arg1].field_768,
           sub_c9991da0[arg1].field_1024,
           sub_c9991da0[arg1].field_1280,
           sub_c9991da0[arg1].field_1536,
           sub_c9991da0[arg1].field_1792,
           sub_c9991da0[arg1].field_2048,
           sub_c9991da0[arg1].field_2304
}

function feeWallet() payable {
    return feeWalletAddress
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

function setFeeAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAmount = arg1
    emit FeeAmountUpdated(arg1);
}

function setFeeWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeWalletAddress = arg1
    emit FeeWalletUpdated(arg1);
}

function setFeeFundsPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 99:
        revert with 0, 'Fee Percentage has to be < 100'
    feeFundsPercent = arg1
}

function setFeeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint32(ext_code.size(arg1)) <= 0:
        revert with 0, 'New address is not a token'
    feeTokenAddress = arg1
    emit TokenFeeUpdated(arg1);
}

function setCreatorProxy(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint32(ext_code.size(arg1)) <= 0:
        revert with 0, 'Error address'
    sub_38c2f5c6Address = arg1
    emit CreatorUpdated(sub_38c2f5c6Address);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setBurnPercent(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734275726e2070657263656e74206d757374206265206c657373207468616e20646976696465,
                    mem[202 len 26]
    burnPercent = arg1
    divider = arg2
    emit BurnPercentUpdated(arg1, arg2);
}

function registrateIDO(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10) payable {
    require calldata.size - 4 >= 320
    if sub_38c2f5c6Address != msg.sender:
        revert with 0, 'registrateIDO: bad role'
    sub_c9991da0[address(arg1)].field_0 = arg2
    sub_c9991da0[address(arg1)].field_256 = arg3
    sub_c9991da0[address(arg1)].field_768 = arg4
    sub_c9991da0[address(arg1)].field_1024 = arg5
    sub_c9991da0[address(arg1)].field_1280 = arg6
    sub_c9991da0[address(arg1)].field_1536 = arg7
    sub_c9991da0[address(arg1)].field_1792 = arg8
    sub_c9991da0[address(arg1)].field_2048 = arg9
    sub_c9991da0[address(arg1)].field_2304 = arg10
    emit IDOCreated(address(arg1), arg2, address(arg3), address(arg4), arg5, arg6, arg7, arg8, arg9, arg10);
}



}
