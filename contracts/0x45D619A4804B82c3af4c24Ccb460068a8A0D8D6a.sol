contract main {




// =====================  Runtime code  =====================


#
#  - forceFileClaim(address arg1, bytes32 arg2, uint48 arg3)
#
address owner; offset 16
uint256 stor0; offset 16
uint8 allowPartialClaim; offset 160
uint128 stor1; offset 160
address stor1;
address auditorAddress;
address governanceAddress;
uint32 stor4;
address treasuryAddress;
uint256 stor4;
address protocolFactoryAddress;
uint256 maxClaimDecisionWindow;
uint256 baseClaimFee;
uint256 forceClaimFee;
uint256 feeMultiplier;
mapping of uint256 stor10;
address feeCurrencyAddress;
array of struct protocolClaims;

function forceClaimFee() payable {
    return forceClaimFee
}

function auditor() payable {
    return auditorAddress
}

function baseClaimFee() payable {
    return baseClaimFee
}

function governance() payable {
    return governanceAddress
}

function treasury() payable {
    return address(treasuryAddress)
}

function isAuditorVoting() payable {
    return bool(auditorAddress)
}

function maxClaimDecisionWindow() payable {
    return maxClaimDecisionWindow
}

function owner() payable {
    return address(owner)
}

function protocolClaims(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 < protocolClaims[arg1][arg2].field_0
    require protocolClaims[arg1][arg2][arg3].field_0 < 6
    return protocolClaims[arg1][arg2][arg3].field_0, 
           protocolClaims[arg1][arg2][arg3].field_0,
           protocolClaims[arg1][arg2][arg3].field_0,
           protocolClaims[arg1][arg2][arg3].field_0,
           protocolClaims[arg1][arg2][arg3].field_200,
           protocolClaims[arg1][arg2][arg3].field_256,
           protocolClaims[arg1][arg2][arg3].field_256,
           protocolClaims[arg1][arg2][arg3].field_512
}

function feeCurrency() payable {
    return feeCurrencyAddress
}

function allowPartialClaim() payable {
    return bool(allowPartialClaim)
}

function feeMultiplier() payable {
    return feeMultiplier
}

function protocolFactory() payable {
    return protocolFactoryAddress
}

function _fallback() payable {
    revert
}

function getProtocolClaimFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor10[address(arg1)]:
        return baseClaimFee
    return stor10[address(arg1)]
}

function setAuditor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    auditorAddress = arg1
}

function setPartialClaimStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function setFeeMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'COVER_CC: !governance'
    if arg1 < 1:
        revert with 0, 'COVER_CC: multiplier < 1'
    feeMultiplier = arg1
}

function claimOwnership() payable {
    if address(stor1.field_0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferCompleted(address(owner), address(stor1.field_0));
    Mask(240, 0, stor0) = address(stor1.field_0)
}

function setMaxClaimDecisionWindow(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 72 * 24 * 3600:
        revert with 0, 'COVER_CC: window too short'
    maxClaimDecisionWindow = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'COVER_CC: treasury cannot be 0'
    address(treasuryAddress) = arg1
}

function getProtocolNonce(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.claimNonce() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferInitiated(address(owner), arg1);
    address(stor1.field_0) = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'COVER_CC: !governance'
    if not arg1:
        revert with 0, 'COVER_CC: governance cannot be 0'
    if arg1 == address(owner):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'COVER_CC: governance cannot be owner'
    governanceAddress = arg1
}

function getAddressFromFactory(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(protocolFactoryAddress)
    staticcall protocolFactoryAddress.protocols(bytes32 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function getFileClaimWindow(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.noclaimRedeemDelay() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if maxClaimDecisionWindow > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 3600 > ext_call.return_data[0] - maxClaimDecisionWindow:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (ext_call.return_data[0] + -maxClaimDecisionWindow - 3600)
}

function setFeeAndCurrency(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if governanceAddress != msg.sender:
        revert with 0, 'COVER_CC: !governance'
    if arg1 <= 0:
        revert with 0, 'COVER_CC: baseClaimFee <= 0'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'COVER_CC: forceClaimFee <= baseClaimFee'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'COVER_CC: feeCurrency cannot be 0'
    baseClaimFee = arg1
    forceClaimFee = arg2
    feeCurrencyAddress = arg3
}

function getAllClaimsByNonce(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 12)
    mem[64] = (32 * protocolClaims[address(arg1)][arg2].field_0) + 128
    mem[96] = protocolClaims[address(arg1)][arg2].field_0
    s = 128
    idx = 0
    while idx < protocolClaims[address(arg1)][arg2].field_0:
        mem[0] = sha3(arg2, sha3(address(arg1), 12))
        _19 = mem[64]
        mem[64] = mem[64] + 256
        require protocolClaims[address(arg1)][arg2][idx].field_0 <= 5
        mem[_19] = protocolClaims[address(arg1)][arg2][idx].field_0
        mem[_19 + 32] = protocolClaims[address(arg1)][arg2][idx].field_8
        mem[_19 + 64] = protocolClaims[address(arg1)][arg2][idx].field_168
        mem[_19 + 96] = protocolClaims[address(arg1)][arg2][idx].field_184
        mem[_19 + 128] = protocolClaims[address(arg1)][arg2][idx].field_200
        mem[_19 + 160] = protocolClaims[address(arg1)][arg2][idx].field_256
        mem[_19 + 192] = protocolClaims[address(arg1)][arg2][idx].field_304
        mem[_19 + 224] = protocolClaims[address(arg1)][arg2][idx].field_512
        mem[s] = _19
        s = s + 32
        idx = idx + 1
        continue 
    _20 = mem[64]
    mem[mem[64]] = 32
    _21 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _21:
        _32 = mem[s]
        require mem[mem[s]] < 6
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_32 + 44 len 20]
        mem[t + 64] = mem[_32 + 94 len 2]
        mem[t + 96] = mem[_32 + 126 len 2]
        mem[t + 128] = mem[_32 + 154 len 6]
        mem[t + 160] = mem[_32 + 186 len 6]
        mem[t + 192] = mem[_32 + 218 len 6]
        mem[t + 224] = mem[_32 + 224]
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _20 + (256 * _21) + -mem[64] + 64
}

function validateClaim(address arg1, uint256 arg2, uint256 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 == arg4
    if governanceAddress != msg.sender:
        revert with 0, 'COVER_CC: !governance'
    if not auditorAddress:
        revert with 0, 'COVER_CM: !isAuditorVoting'
    require arg3 < protocolClaims[address(arg1)][arg2].field_0
    require ext_code.size(arg1)
    staticcall arg1.claimNonce() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 != ext_call.return_data[0]:
        revert with 0, 'COVER_CM: input nonce != protocol nonce'
    require protocolClaims[address(arg1)][arg2][arg3].field_0 <= 5
    if protocolClaims[address(arg1)][arg2][arg3].field_0:
        revert with 0, 'COVER_CM: claim not filed'
    if arg4:
        protocolClaims[address(arg1)][arg2][arg3].field_0 = 2
        stor10[address(arg1)] = baseClaimFee
    else:
        protocolClaims[address(arg1)][arg2][arg3].field_0 = 3
        protocolClaims[address(arg1)][arg2][arg3].field_304 = block.timestamp % 281474976710656
        mem[ceil32(return_data.size) + 132] = address(treasuryAddress)
        mem[ceil32(return_data.size) + 164] = protocolClaims[address(arg1)][arg2][arg3].field_512
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address rg1, uint256 rg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(feeCurrencyAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(feeCurrencyAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), protocolClaims[address(arg1)][arg2][arg3].field_512, 0
        mem[ceil32(return_data.size) + 328] = 0
        call feeCurrencyAddress with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), protocolClaims[address(arg1)][arg2][arg3].field_512, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), protocolClaims[address(arg1)][arg2][arg3].field_512, 0) << 288)
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
    emit ClaimValidated(arg2, arg3, arg4, arg1);
}

function sub_d517f2c0(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 < 6
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 12)
    mem[64] = (32 * protocolClaims[address(arg1)][arg2].field_0) + 128
    mem[96] = protocolClaims[address(arg1)][arg2].field_0
    s = 128
    idx = 0
    while idx < protocolClaims[address(arg1)][arg2].field_0:
        mem[0] = sha3(arg2, sha3(address(arg1), 12))
        _51 = mem[64]
        mem[64] = mem[64] + 256
        require protocolClaims[address(arg1)][arg2][idx].field_0 <= 5
        mem[_51] = protocolClaims[address(arg1)][arg2][idx].field_0
        mem[_51 + 32] = protocolClaims[address(arg1)][arg2][idx].field_8
        mem[_51 + 64] = protocolClaims[address(arg1)][arg2][idx].field_168
        mem[_51 + 96] = protocolClaims[address(arg1)][arg2][idx].field_184
        mem[_51 + 128] = protocolClaims[address(arg1)][arg2][idx].field_200
        mem[_51 + 160] = protocolClaims[address(arg1)][arg2][idx].field_256
        mem[_51 + 192] = protocolClaims[address(arg1)][arg2][idx].field_304
        mem[_51 + 224] = protocolClaims[address(arg1)][arg2][idx].field_512
        mem[s] = _51
        s = s + 32
        idx = idx + 1
        continue 
    _49 = mem[96]
    require mem[96] <= test266151307()
    _52 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _49) + 32
    if not _49:
        _94 = mem[96]
        idx = 0
        s = 0
        while idx < _94:
            require arg3 <= 5
            require idx < mem[96]
            require mem[mem[(32 * idx) + 128]] <= 5
            if mem[mem[(32 * idx) + 128]] != arg3:
                _94 = mem[96]
                idx = idx + 1
                s = s
                continue 
            require idx < mem[96]
            require s < mem[_52]
            mem[(32 * s) + _52 + 32] = mem[(32 * idx) + 128]
            _94 = mem[96]
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        _96 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            t = 0
            while t < s:
                require t < mem[_52]
                require t < mem[_96]
                mem[(32 * t) + _96 + 32] = mem[(32 * t) + _52 + 32]
                t = t + 1
                continue 
            _157 = mem[64]
            mem[mem[64]] = 32
            _160 = mem[_96]
            mem[mem[64] + 32] = mem[_96]
            idx = 0
            s = _96 + 32
            t = mem[64] + 64
            while idx < _160:
                _208 = mem[s]
                require mem[mem[s]] < 6
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_208 + 44 len 20]
                mem[t + 64] = mem[_208 + 94 len 2]
                mem[t + 96] = mem[_208 + 126 len 2]
                mem[t + 128] = mem[_208 + 154 len 6]
                mem[t + 160] = mem[_208 + 186 len 6]
                mem[t + 192] = mem[_208 + 218 len 6]
                mem[t + 224] = mem[_208 + 224]
                idx = idx + 1
                s = s + 32
                t = t + 256
                continue 
            return memory
              from mem[64]
               len _157 + (256 * _160) + -mem[64] + 64
        mem[64] = _96 + (32 * s) + 288
        mem[_96 + (32 * s) + 32] = 0
        mem[_96 + (32 * s) + 64] = 0
        mem[_96 + (32 * s) + 96] = 0
        mem[_96 + (32 * s) + 128] = 0
        mem[_96 + (32 * s) + 160] = 0
        mem[_96 + (32 * s) + 192] = 0
        mem[_96 + (32 * s) + 224] = 0
        mem[_96 + (32 * s) + 256] = 0
        mem[var23001] = _96 + (32 * s) + 32
        t = var23001
        idx = var23002
        while idx - 1:
            mem[64] = mem[64] + 256
            mem[_96 + (32 * s) + 32] = 0
            mem[_96 + (32 * s) + 64] = 0
            mem[_96 + (32 * s) + 96] = 0
            mem[_96 + (32 * s) + 128] = 0
            mem[_96 + (32 * s) + 160] = 0
            mem[_96 + (32 * s) + 192] = 0
            mem[_96 + (32 * s) + 224] = 0
            mem[_96 + (32 * s) + 256] = 0
            mem[t + 32] = _96 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        t = 0
        while t < s:
            require t < mem[_52]
            require t < mem[_96]
            mem[(32 * t) + _96 + 32] = mem[(32 * t) + _52 + 32]
            t = t + 1
            continue 
        _274 = mem[64]
        mem[mem[64]] = 32
        _280 = mem[_96]
        mem[mem[64] + 32] = mem[_96]
        idx = 0
        s = _96 + 32
        t = mem[64] + 64
        while idx < _280:
            _318 = mem[s]
            require mem[mem[s]] < 6
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_318 + 44 len 20]
            mem[t + 64] = mem[_318 + 94 len 2]
            mem[t + 96] = mem[_318 + 126 len 2]
            mem[t + 128] = mem[_318 + 154 len 6]
            mem[t + 160] = mem[_318 + 186 len 6]
            mem[t + 192] = mem[_318 + 218 len 6]
            mem[t + 224] = mem[_318 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _274 + (256 * _280) + -mem[64] + 64
    mem[64] = _52 + (32 * _49) + 288
    mem[_52 + (32 * _49) + 32] = 0
    mem[_52 + (32 * _49) + 64] = 0
    mem[_52 + (32 * _49) + 96] = 0
    mem[_52 + (32 * _49) + 128] = 0
    mem[_52 + (32 * _49) + 160] = 0
    mem[_52 + (32 * _49) + 192] = 0
    mem[_52 + (32 * _49) + 224] = 0
    mem[_52 + (32 * _49) + 256] = 0
    mem[var18001] = _52 + (32 * _49) + 32
    s = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[_52 + (32 * _49) + 32] = 0
        mem[_52 + (32 * _49) + 64] = 0
        mem[_52 + (32 * _49) + 96] = 0
        mem[_52 + (32 * _49) + 128] = 0
        mem[_52 + (32 * _49) + 160] = 0
        mem[_52 + (32 * _49) + 192] = 0
        mem[_52 + (32 * _49) + 224] = 0
        mem[_52 + (32 * _49) + 256] = 0
        mem[s + 32] = _52 + (32 * _49) + 32
        s = s + 32
        idx = idx - 1
        continue 
    _207 = mem[96]
    idx = 0
    s = 0
    while idx < _207:
        require arg3 <= 5
        require idx < mem[96]
        require mem[mem[(32 * idx) + 128]] <= 5
        if mem[mem[(32 * idx) + 128]] != arg3:
            _207 = mem[96]
            idx = idx + 1
            s = s
            continue 
        require idx < mem[96]
        require s < mem[_52]
        mem[(32 * s) + _52 + 32] = mem[(32 * idx) + 128]
        _207 = mem[96]
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    _211 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        t = 0
        while t < s:
            require t < mem[_52]
            require t < mem[_211]
            mem[(32 * t) + _211 + 32] = mem[(32 * t) + _52 + 32]
            t = t + 1
            continue 
        _277 = mem[64]
        mem[mem[64]] = 32
        _281 = mem[_211]
        mem[mem[64] + 32] = mem[_211]
        idx = 0
        s = _211 + 32
        t = mem[64] + 64
        while idx < _281:
            _320 = mem[s]
            require mem[mem[s]] < 6
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_320 + 44 len 20]
            mem[t + 64] = mem[_320 + 94 len 2]
            mem[t + 96] = mem[_320 + 126 len 2]
            mem[t + 128] = mem[_320 + 154 len 6]
            mem[t + 160] = mem[_320 + 186 len 6]
            mem[t + 192] = mem[_320 + 218 len 6]
            mem[t + 224] = mem[_320 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _277 + (256 * _281) + -mem[64] + 64
    mem[64] = _211 + (32 * s) + 288
    mem[_211 + (32 * s) + 32] = 0
    mem[_211 + (32 * s) + 64] = 0
    mem[_211 + (32 * s) + 96] = 0
    mem[_211 + (32 * s) + 128] = 0
    mem[_211 + (32 * s) + 160] = 0
    mem[_211 + (32 * s) + 192] = 0
    mem[_211 + (32 * s) + 224] = 0
    mem[_211 + (32 * s) + 256] = 0
    mem[var30001] = _211 + (32 * s) + 32
    t = var30001
    idx = var30002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[_211 + (32 * s) + 32] = 0
        mem[_211 + (32 * s) + 64] = 0
        mem[_211 + (32 * s) + 96] = 0
        mem[_211 + (32 * s) + 128] = 0
        mem[_211 + (32 * s) + 160] = 0
        mem[_211 + (32 * s) + 192] = 0
        mem[_211 + (32 * s) + 224] = 0
        mem[_211 + (32 * s) + 256] = 0
        mem[t + 32] = _211 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    t = 0
    while t < s:
        require t < mem[_52]
        require t < mem[_211]
        mem[(32 * t) + _211 + 32] = mem[(32 * t) + _52 + 32]
        t = t + 1
        continue 
    _354 = mem[64]
    mem[mem[64]] = 32
    _357 = mem[_211]
    mem[mem[64] + 32] = mem[_211]
    idx = 0
    s = _211 + 32
    t = mem[64] + 64
    while idx < _357:
        _368 = mem[s]
        require mem[mem[s]] < 6
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_368 + 44 len 20]
        mem[t + 64] = mem[_368 + 94 len 2]
        mem[t + 96] = mem[_368 + 126 len 2]
        mem[t + 128] = mem[_368 + 154 len 6]
        mem[t + 160] = mem[_368 + 186 len 6]
        mem[t + 192] = mem[_368 + 218 len 6]
        mem[t + 224] = mem[_368 + 224]
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _354 + (256 * _357) + -mem[64] + 64
}

function decideClaim(address arg1, uint256 arg2, uint256 arg3, bool arg4, uint16 arg5, uint16 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not auditorAddress:
        if governanceAddress != msg.sender:
            revert with 0, 'COVER_CM: !governance'
    else:
        if auditorAddress != msg.sender:
            revert with 0, 'COVER_CM: !auditor'
    require ext_code.size(arg1)
    staticcall arg1.claimNonce() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 != ext_call.return_data[0]:
        revert with 0, 'COVER_CM: input nonce != protocol nonce'
    require arg3 < protocolClaims[address(arg1)][arg2].field_0
    require protocolClaims[address(arg1)][arg2][arg3].field_0 <= 5
    if not auditorAddress:
        if protocolClaims[address(arg1)][arg2][arg3].field_0:
            revert with 0, 'COVER_CM: claim not filed'
    else:
        if protocolClaims[address(arg1)][arg2][arg3].field_0 != 2:
            require protocolClaims[address(arg1)][arg2][arg3].field_0 <= 5
            if protocolClaims[address(arg1)][arg2][arg3].field_0 != 1:
                revert with 0, 'COVER_CM: claim not validated or forceFiled'
    require protocolClaims[address(arg1)][arg2][arg3].field_0 <= 5
    mem[ceil32(return_data.size) + 96] = protocolClaims[address(arg1)][arg2][arg3].field_0
    mem[ceil32(return_data.size) + 128] = protocolClaims[address(arg1)][arg2][arg3].field_8
    mem[ceil32(return_data.size) + 160] = protocolClaims[address(arg1)][arg2][arg3].field_168
    mem[ceil32(return_data.size) + 192] = protocolClaims[address(arg1)][arg2][arg3].field_184
    mem[ceil32(return_data.size) + 224] = protocolClaims[address(arg1)][arg2][arg3].field_200
    mem[ceil32(return_data.size) + 256] = protocolClaims[address(arg1)][arg2][arg3].field_256
    mem[ceil32(return_data.size) + 288] = protocolClaims[address(arg1)][arg2][arg3].field_304
    mem[ceil32(return_data.size) + 320] = protocolClaims[address(arg1)][arg2][arg3].field_512
    mem[ceil32(return_data.size) + 352] = 30
    mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
    if 3600 > maxClaimDecisionWindow:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[ceil32(return_data.size) + 416] = 30
    mem[ceil32(return_data.size) + 448] = 'SafeMath: subtraction overflow'
    if protocolClaims[address(arg1)][arg2][arg3].field_200 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - protocolClaims[address(arg1)][arg2][arg3].field_200 > maxClaimDecisionWindow - 3600:
        if arg5:
            revert with 0, 'COVER_CM: claim denied (default if passed window), but payoutNumerator != 0'
        protocolClaims[address(arg1)][arg2][arg3].field_0 = 5
        mem[ceil32(return_data.size) + 516] = address(treasuryAddress)
        mem[ceil32(return_data.size) + 548] = protocolClaims[address(arg1)][arg2][arg3].field_512
        mem[ceil32(return_data.size) + 480] = 68
        mem[ceil32(return_data.size) + 516 len 28] = Mask(224, 0, stor4)
        mem[ceil32(return_data.size) + 512 len 4] = transfer(address rg1, uint256 rg2)
        mem[ceil32(return_data.size) + 580] = 32
        mem[ceil32(return_data.size) + 612] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(feeCurrencyAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(feeCurrencyAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 644 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), protocolClaims[address(arg1)][arg2][arg3].field_512, 0
        mem[ceil32(return_data.size) + 712] = 0
        call feeCurrencyAddress with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), protocolClaims[address(arg1)][arg2][arg3].field_512, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), protocolClaims[address(arg1)][arg2][arg3].field_512, 0) << 288)
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
            mem[ceil32(return_data.size) + 676 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 676] == bool(mem[ceil32(return_data.size) + 676])
                if not mem[ceil32(return_data.size) + 676]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        protocolClaims[address(arg1)][arg2][arg3].field_304 = block.timestamp % 281474976710656
        emit ClaimDecided(arg2, arg3, arg5 << 240, arg6, 0, arg1);
    else:
        if not arg4:
            if arg5:
                revert with 0, 'COVER_CM: claim denied (default if passed window), but payoutNumerator != 0'
            protocolClaims[address(arg1)][arg2][arg3].field_0 = 5
            mem[ceil32(return_data.size) + 516] = address(treasuryAddress)
            mem[ceil32(return_data.size) + 548] = protocolClaims[address(arg1)][arg2][arg3].field_512
            mem[ceil32(return_data.size) + 480] = 68
            mem[ceil32(return_data.size) + 516 len 28] = Mask(224, 0, stor4)
            mem[ceil32(return_data.size) + 512 len 4] = transfer(address rg1, uint256 rg2)
            mem[ceil32(return_data.size) + 580] = 32
            mem[ceil32(return_data.size) + 612] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(feeCurrencyAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(feeCurrencyAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 644 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), protocolClaims[address(arg1)][arg2][arg3].field_512, 0
            mem[ceil32(return_data.size) + 712] = 0
            call feeCurrencyAddress with:
               funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), protocolClaims[address(arg1)][arg2][arg3].field_512, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), protocolClaims[address(arg1)][arg2][arg3].field_512, 0) << 288)
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
                mem[ceil32(return_data.size) + 676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 676] == bool(mem[ceil32(return_data.size) + 676])
                    if not mem[ceil32(return_data.size) + 676]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if arg5 <= 0:
                revert with 0, 'COVER_CM: claim accepted, but payoutNumerator == 0'
            if not allowPartialClaim:
                if arg5 != arg6:
                    revert with 0, 'COVER_CM: payoutNumerator != payoutDenominator'
            else:
                if arg5 > arg6:
                    revert with 0, 'COVER_CM: payoutNumerator > payoutDenominator'
            protocolClaims[address(arg1)][arg2][arg3].field_0 = 4
            protocolClaims[address(arg1)][arg2][arg3].field_168 = arg5
            protocolClaims[address(arg1)][arg2][arg3].field_184 = arg6
            protocolClaims[address(arg1)][arg2][arg3].field_256 = 0
            mem[ceil32(return_data.size) + 516] = protocolClaims[address(arg1)][arg2][arg3].field_8
            mem[ceil32(return_data.size) + 548] = protocolClaims[address(arg1)][arg2][arg3].field_512
            mem[ceil32(return_data.size) + 480] = 68
            mem[ceil32(return_data.size) + 516 len 28] = protocolClaims[address(arg1)][arg2][arg3].field_0
            mem[ceil32(return_data.size) + 512 len 4] = transfer(address rg1, uint256 rg2)
            mem[ceil32(return_data.size) + 580] = 32
            mem[ceil32(return_data.size) + 612] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(feeCurrencyAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(feeCurrencyAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 644 len 96] = transfer(address rg1, uint256 rg2), protocolClaims[address(arg1)][arg2][arg3].field_0, protocolClaims[address(arg1)][arg2][arg3].field_0, protocolClaims[address(arg1)][arg2][arg3].field_512, 0
            mem[ceil32(return_data.size) + 712] = 0
            call feeCurrencyAddress with:
               funct Mask(32, 224, transfer(address rg1, uint256 rg2), protocolClaims[address(arg1)][arg2][arg3].field_0, protocolClaims[address(arg1)][arg2][arg3].field_0, protocolClaims[address(arg1)][arg2][arg3].field_512, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address rg1, uint256 rg2), protocolClaims[address(arg1)][arg2][arg3].field_0, protocolClaims[address(arg1)][arg2][arg3].field_0, protocolClaims[address(arg1)][arg2][arg3].field_512, 0) << 288)
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
                mem[ceil32(return_data.size) + 676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 676] == bool(mem[ceil32(return_data.size) + 676])
                    if not mem[ceil32(return_data.size) + 676]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            stor10[address(arg1)] = baseClaimFee
            require ext_code.size(arg1)
            call arg1.enactClaim(uint16 rg1, uint16 rg2, uint48 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args arg5 << 240, arg6 << 240, protocolClaims[address(arg1)][arg2][arg3].field_256, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        protocolClaims[address(arg1)][arg2][arg3].field_304 = block.timestamp % 281474976710656
        emit ClaimDecided(arg2, arg3, arg5 << 240, arg6, arg4, arg1);
}

function fileClaim(address arg1, bytes32 arg2, uint48 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3 % 281474976710656
    if not arg1:
        revert with 0, 'COVER_CM: protocol cannot be 0'
    mem[100] = arg2
    require ext_code.size(protocolFactoryAddress)
    staticcall protocolFactoryAddress.protocols(bytes32 rg1) with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 != ext_call.return_data[12 len 20]:
        revert with 0, 'COVER_CM: invalid protocol address'
    require ext_code.size(arg1)
    staticcall arg1.noclaimRedeemDelay() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 96] = 30
    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
    if maxClaimDecisionWindow > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[(2 * ceil32(return_data.size)) + 160] = 30
    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: subtraction overflow'
    if 3600 > ext_call.return_data[0] - maxClaimDecisionWindow:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[(2 * ceil32(return_data.size)) + 224] = 30
    mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
    if arg3 % 281474976710656 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - (arg3 % 281474976710656) > ext_call.return_data[0] + -maxClaimDecisionWindow - 3600:
        revert with 0, 'COVER_CM: block.timestamp - incidentTimestamp > fileClaimWindow'
    require ext_code.size(arg1)
    staticcall arg1.claimNonce() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 288] = 0
    mem[(4 * ceil32(return_data.size)) + 320] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 352] = 0
    mem[(4 * ceil32(return_data.size)) + 384] = 1
    mem[(4 * ceil32(return_data.size)) + 416] = block.timestamp % 281474976710656
    mem[(4 * ceil32(return_data.size)) + 448] = arg3 % 281474976710656
    mem[(4 * ceil32(return_data.size)) + 480] = 0
    if not stor10[address(arg1)]:
        mem[(4 * ceil32(return_data.size)) + 512] = baseClaimFee
        protocolClaims[address(arg1)][ext_call.return_data[0]].field_0++
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_0 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_256 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_8 = msg.sender
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_168 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_184 = 1
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_192 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_200 = block.timestamp % 281474976710656
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_248 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_256 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_256 = arg3 % 281474976710656
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_304 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_512 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_512 = baseClaimFee
        mem[(4 * ceil32(return_data.size)) + 580] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 612] = this.address
        mem[(4 * ceil32(return_data.size)) + 644] = baseClaimFee
        mem[(4 * ceil32(return_data.size)) + 544] = 100
        mem[(4 * ceil32(return_data.size)) + 580 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 576 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[(4 * ceil32(return_data.size)) + 676] = 32
        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(feeCurrencyAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(feeCurrencyAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 740 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), baseClaimFee, 0
        mem[(4 * ceil32(return_data.size)) + 840] = 0
        call feeCurrencyAddress with:
           funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), baseClaimFee, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), baseClaimFee, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(arg2), mem[132 len 28] == bool(uint32(arg2), mem[132 len 28])
                if not uint32(arg2), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 772] == bool(mem[(4 * ceil32(return_data.size)) + 772])
                if not mem[(4 * ceil32(return_data.size)) + 772]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if not stor10[address(arg1)]:
            if not baseClaimFee:
                if 0 <= forceClaimFee:
                    stor10[address(arg1)] = 0
            else:
                if feeMultiplier * baseClaimFee / baseClaimFee != feeMultiplier:
                    revert with 0, 'SafeMath: multiplication overflow'
                if feeMultiplier * baseClaimFee <= forceClaimFee:
                    stor10[address(arg1)] = feeMultiplier * baseClaimFee
        else:
            if not stor10[address(arg1)]:
                if 0 <= forceClaimFee:
                    stor10[address(arg1)] = 0
            else:
                if feeMultiplier * stor10[address(arg1)] / stor10[address(arg1)] != feeMultiplier:
                    revert with 0, 'SafeMath: multiplication overflow'
                if feeMultiplier * stor10[address(arg1)] <= forceClaimFee:
                    stor10[address(arg1)] = feeMultiplier * stor10[address(arg1)]
        emit ClaimFiled(arg3 << 208, ext_call.return_data[0], protocolClaims[address(arg1)][ext_call.return_data[0]].field_0 - 1, baseClaimFee, 0, msg.sender, arg1);
    else:
        mem[(4 * ceil32(return_data.size)) + 512] = stor10[address(arg1)]
        protocolClaims[address(arg1)][ext_call.return_data[0]].field_0++
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_0 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_256 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_8 = msg.sender
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_168 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_184 = 1
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_192 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_200 = block.timestamp % 281474976710656
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_248 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_256 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_256 = arg3 % 281474976710656
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_304 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_512 = 0
        protocolClaims[address(arg1)][ext_call.return_data[0]][protocolClaims[address(arg1)][ext_call.return_data[0]].field_0].field_512 = stor10[address(arg1)]
        mem[(4 * ceil32(return_data.size)) + 580] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 612] = this.address
        mem[(4 * ceil32(return_data.size)) + 644] = stor10[address(arg1)]
        mem[(4 * ceil32(return_data.size)) + 544] = 100
        mem[(4 * ceil32(return_data.size)) + 580 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 576 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[(4 * ceil32(return_data.size)) + 676] = 32
        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(feeCurrencyAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(feeCurrencyAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 740 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), stor10[address(arg1)], 0
        mem[(4 * ceil32(return_data.size)) + 840] = 0
        call feeCurrencyAddress with:
           funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), stor10[address(arg1)], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), stor10[address(arg1)], 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(arg2), mem[132 len 28] == bool(uint32(arg2), mem[132 len 28])
                if not uint32(arg2), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 772] == bool(mem[(4 * ceil32(return_data.size)) + 772])
                if not mem[(4 * ceil32(return_data.size)) + 772]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if not stor10[address(arg1)]:
            if not baseClaimFee:
                if 0 <= forceClaimFee:
                    stor10[address(arg1)] = 0
            else:
                if feeMultiplier * baseClaimFee / baseClaimFee != feeMultiplier:
                    revert with 0, 'SafeMath: multiplication overflow'
                if feeMultiplier * baseClaimFee <= forceClaimFee:
                    stor10[address(arg1)] = feeMultiplier * baseClaimFee
        else:
            if not stor10[address(arg1)]:
                if 0 <= forceClaimFee:
                    stor10[address(arg1)] = 0
            else:
                if feeMultiplier * stor10[address(arg1)] / stor10[address(arg1)] != feeMultiplier:
                    revert with 0, 'SafeMath: multiplication overflow'
                if feeMultiplier * stor10[address(arg1)] <= forceClaimFee:
                    stor10[address(arg1)] = feeMultiplier * stor10[address(arg1)]
        emit ClaimFiled(arg3 << 208, ext_call.return_data[0], protocolClaims[address(arg1)][ext_call.return_data[0]].field_0 - 1, stor10[address(arg1)], 0, msg.sender, arg1);
}



}
