contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address aAddress; offset 8
mapping of uint256 cumulativeRates;
mapping of uint256 lastRefresh;

function a() payable {
    return aAddress
}

function synced() payable {
    return bool(stor0)
}

function cumulativeRates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return cumulativeRates[arg1]
}

function lastRefresh(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastRefresh[arg1]
}

function _fallback() payable {
    revert
}

function initializeRates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0x79502c55 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    lastRefresh[address(arg1)] = block.timestamp
    cumulativeRates[address(arg1)] = 1000000000 * 10^18
}

function availableIncome() payable {
    require ext_code.size(aAddress)
    staticcall aAddress.0x16d8a5a9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0x65d55287 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).debt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    else:
        return 0
}

function refreshCollateral(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0x79502c55 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdb67c4d5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if lastRefresh[address(arg1)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(aAddress)
    staticcall aAddress.0x79502c55 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xe4ea33ef with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aAddress)
    staticcall aAddress.0xb8091c5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xe7b5e7bd with:
            gas gas_remaining wei
           args ext_call.return_data[0], cumulativeRates[address(arg1)], block.timestamp - lastRefresh[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    cumulativeRates[address(arg1)] = ext_call.return_data[0]
    emit CumulativeRateUpdated(block.timestamp - lastRefresh[address(arg1)], ext_call.return_data[0], arg1);
    lastRefresh[address(arg1)] = block.timestamp
}

function refresh() payable {
    mem[64] = 96
    mem[96] = 0x79502c5500000000000000000000000000000000000000000000000000000000
    require ext_code.size(aAddress)
    staticcall aAddress.mem[var98003 len 4] with:
            gas gas_remaining wei
           args mem[var98003 + 4 len var98004 - 4]
    mem[var98005] = ext_call.return_data[0]
    if ext_call.success:
        mem[64] = ceil32(return_data.size) + 96
        require var102002 - var102001 >= 32
        _289 = mem[var104002]
        require mem[var104002] == mem[var104002 + 12 len 20]
        require ext_code.size(mem[var104002 + 12 len 20])
        staticcall mem[var104002 + 12 len 20].0xd47e470d with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        s = _289
        s = _289
        s = var104002
        s = var104003
        s = var104005
        while ext_call.success:
            _349 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > mem[_349]:
            require ext_code.size(aAddress)
            staticcall aAddress.0x79502c55 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _353 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_353] == mem[_353 + 12 len 20]
            require ext_code.size(mem[_353 + 12 len 20])
            staticcall mem[_353 + 12 len 20].0x4a6e0dd0 with:
                    gas gas_remaining wei
                   args s
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _358 = mem[64]
            require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
            mem[64] = mem[64] + 256
            require mem[_357] == mem[_357 + 12 len 20]
            mem[_358] = mem[_357]
            mem[_358 + 32] = mem[_357 + 32]
            mem[_358 + 64] = mem[_357 + 64]
            mem[_358 + 96] = mem[_357 + 96]
            mem[_358 + 128] = mem[_357 + 128]
            mem[_358 + 160] = mem[_357 + 160]
            mem[_358 + 192] = mem[_357 + 192]
            mem[_358 + 224] = mem[_357 + 224]
            _367 = mem[_358]
            require mem[_358 + 12 len 20]
            require ext_code.size(aAddress)
            staticcall aAddress.0x79502c55 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _370 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _371 = mem[_370]
            require mem[_370] == mem[_370 + 12 len 20]
            mem[mem[64] + 4] = address(_367)
            require ext_code.size(address(_371))
            staticcall address(_371).0xdb67c4d5 with:
                    gas gas_remaining wei
                   args address(_367)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _374 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_374]
            mem[0] = address(_367)
            mem[32] = 2
            if lastRefresh[address(_367)] > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(aAddress)
            staticcall aAddress.0x79502c55 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _381 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _382 = mem[_381]
            require mem[_381] == mem[_381 + 12 len 20]
            mem[mem[64] + 4] = address(_367)
            require ext_code.size(address(_382))
            staticcall address(_382).0xe4ea33ef with:
                    gas gas_remaining wei
                   args address(_367)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _385 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _386 = mem[_385]
            mem[0] = address(_367)
            mem[32] = 1
            require ext_code.size(aAddress)
            staticcall aAddress.0xb8091c5b with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _390 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _391 = mem[_390]
            require mem[_390] == mem[_390 + 12 len 20]
            mem[mem[64] + 4] = _386
            mem[mem[64] + 36] = cumulativeRates[address(_367)]
            mem[mem[64] + 68] = block.timestamp - lastRefresh[address(_367)]
            require ext_code.size(address(_391))
            staticcall address(_391).0xe7b5e7bd with:
                    gas gas_remaining wei
                   args _386, cumulativeRates[address(_367)], block.timestamp - lastRefresh[address(_367)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _394 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _395 = mem[_394]
            cumulativeRates[address(_367)] = mem[_394]
            mem[mem[64] + 32] = mem[_394]
            emit CumulativeRateUpdated(block.timestamp - lastRefresh[address(_367)], _395, address(_367));
            mem[0] = address(_367)
            mem[32] = 2
            lastRefresh[address(_367)] = block.timestamp
            require ext_code.size(aAddress)
            staticcall aAddress.0x79502c55 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _402 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _403 = mem[_402]
            require mem[_402] == mem[_402 + 12 len 20]
            mem[mem[64]] = 0xd47e470d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_403))
            staticcall address(_403).0xd47e470d with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 96]
            mem[mem[64]] = ext_call.return_data[0]
            s = _403
            s = _403
            s = _402
            s = _402 + return_data.size
            s = s + 1
            continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function syncState(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(aAddress)
        staticcall aAddress.0xf77c4791 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xec87621c with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x91d14854 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], msg.sender
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if ext_call.success:
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    require not stor0
                    mem[(6 * ceil32(return_data.size)) + 96] = 0x79502c5500000000000000000000000000000000000000000000000000000000
                    require ext_code.size(aAddress)
                    staticcall aAddress.mem[var92003 len 4] with:
                            gas gas_remaining wei
                           args mem[var92003 + 4 len var92004 - 4]
                    mem[var92005] = ext_call.return_data[0]
                    if ext_call.success:
                        mem[64] = (7 * ceil32(return_data.size)) + 96
                        require var96002 - var96001 >= 32
                        _195 = mem[var98002]
                        require mem[var98002] == mem[var98002 + 12 len 20]
                        require ext_code.size(mem[var98002 + 12 len 20])
                        staticcall mem[var98002 + 12 len 20].0xd47e470d with:
                                gas gas_remaining wei
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        s = _195
                        s = _195
                        s = var98002
                        s = var98003
                        s = var98005
                        while ext_call.success:
                            _233 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s > mem[_233]:
                                stor0 = 1
                            require ext_code.size(aAddress)
                            staticcall aAddress.0x79502c55 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _237 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_237] == mem[_237 + 12 len 20]
                            require ext_code.size(mem[_237 + 12 len 20])
                            staticcall mem[_237 + 12 len 20].0x4a6e0dd0 with:
                                    gas gas_remaining wei
                                   args s
                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _241 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 256
                            _242 = mem[64]
                            require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
                            mem[64] = mem[64] + 256
                            require mem[_241] == mem[_241 + 12 len 20]
                            mem[_242] = mem[_241]
                            mem[_242 + 32] = mem[_241 + 32]
                            mem[_242 + 64] = mem[_241 + 64]
                            mem[_242 + 96] = mem[_241 + 96]
                            mem[_242 + 128] = mem[_241 + 128]
                            mem[_242 + 160] = mem[_241 + 160]
                            mem[_242 + 192] = mem[_241 + 192]
                            mem[_242 + 224] = mem[_241 + 224]
                            _251 = mem[_242]
                            mem[mem[64] + 4] = mem[_242 + 12 len 20]
                            require ext_code.size(arg1)
                            staticcall arg1.0x85d36cd7 with:
                                    gas gas_remaining wei
                                   args address(_251)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _254 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _255 = mem[_254]
                            mem[0] = address(_251)
                            mem[32] = 1
                            cumulativeRates[address(_251)] = _255
                            mem[mem[64] + 4] = address(_251)
                            require ext_code.size(arg1)
                            staticcall arg1.0xc9d6c0f8 with:
                                    gas gas_remaining wei
                                   args address(_251)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _259 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _260 = mem[_259]
                            mem[0] = address(_251)
                            mem[32] = 2
                            lastRefresh[address(_251)] = _260
                            require ext_code.size(aAddress)
                            staticcall aAddress.0x79502c55 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _264 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _265 = mem[_264]
                            require mem[_264] == mem[_264 + 12 len 20]
                            mem[mem[64]] = 0xd47e470d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_265))
                            staticcall address(_265).0xd47e470d with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            s = _265
                            s = _265
                            s = _264
                            s = _264 + return_data.size
                            s = s + 1
                            continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function syncStateFromV1(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0xf77c4791 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(aAddress)
        staticcall aAddress.0xf77c4791 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xec87621c with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x91d14854 with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], msg.sender
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if ext_call.success:
                    mem[64] = (6 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    require not stor0
                    mem[(6 * ceil32(return_data.size)) + 96] = 0x79502c5500000000000000000000000000000000000000000000000000000000
                    require ext_code.size(aAddress)
                    staticcall aAddress.mem[var92003 len 4] with:
                            gas gas_remaining wei
                           args mem[var92003 + 4 len var92004 - 4]
                    mem[var92005] = ext_call.return_data[0]
                    if ext_call.success:
                        mem[64] = (7 * ceil32(return_data.size)) + 96
                        require var96002 - var96001 >= 32
                        _195 = mem[var98002]
                        require mem[var98002] == mem[var98002 + 12 len 20]
                        require ext_code.size(mem[var98002 + 12 len 20])
                        staticcall mem[var98002 + 12 len 20].0xd47e470d with:
                                gas gas_remaining wei
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        s = _195
                        s = _195
                        s = var98002
                        s = var98003
                        s = var98005
                        while ext_call.success:
                            _233 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if s > mem[_233]:
                                stor0 = 1
                            require ext_code.size(aAddress)
                            staticcall aAddress.0x79502c55 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _237 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_237] == mem[_237 + 12 len 20]
                            require ext_code.size(mem[_237 + 12 len 20])
                            staticcall mem[_237 + 12 len 20].0x4a6e0dd0 with:
                                    gas gas_remaining wei
                                   args s
                            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _241 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 256
                            _242 = mem[64]
                            require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
                            mem[64] = mem[64] + 256
                            require mem[_241] == mem[_241 + 12 len 20]
                            mem[_242] = mem[_241]
                            mem[_242 + 32] = mem[_241 + 32]
                            mem[_242 + 64] = mem[_241 + 64]
                            mem[_242 + 96] = mem[_241 + 96]
                            mem[_242 + 128] = mem[_241 + 128]
                            mem[_242 + 160] = mem[_241 + 160]
                            mem[_242 + 192] = mem[_241 + 192]
                            mem[_242 + 224] = mem[_241 + 224]
                            _251 = mem[_242]
                            mem[mem[64] + 4] = mem[_242 + 12 len 20]
                            require ext_code.size(arg1)
                            staticcall arg1.0x85d36cd7 with:
                                    gas gas_remaining wei
                                   args address(_251)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _254 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _255 = mem[_254]
                            mem[0] = address(_251)
                            mem[32] = 1
                            cumulativeRates[address(_251)] = _255
                            mem[mem[64] + 4] = address(_251)
                            require ext_code.size(arg1)
                            staticcall arg1.0xc9d6c0f8 with:
                                    gas gas_remaining wei
                                   args address(_251)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _259 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _260 = mem[_259]
                            mem[0] = address(_251)
                            mem[32] = 2
                            lastRefresh[address(_251)] = _260
                            require ext_code.size(aAddress)
                            staticcall aAddress.0x79502c55 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _264 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _265 = mem[_264]
                            require mem[_264] == mem[_264 + 12 len 20]
                            mem[mem[64]] = 0xd47e470d00000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_265))
                            staticcall address(_265).0xd47e470d with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 96]
                            mem[mem[64]] = ext_call.return_data[0]
                            s = _265
                            s = _265
                            s = _264
                            s = _264 + return_data.size
                            s = s + 1
                            continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
