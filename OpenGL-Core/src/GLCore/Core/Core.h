// Mostly from Hazel
#pragma once

#include <memory>

#if defined GLCORE_PLATFORM_LINUX
	#include <signal.h>
	#define __debugbreak() raise(SIGTRAP)
#endif

#ifdef GLCORE_DEBUG
	#define GLCORE_ENABLE_ASSERTS
#endif

#ifdef GLCORE_ENABLE_ASSERTS
	#define GLCORE_ASSERT(x, ...) { if(!(x)) { LOG_ERROR("Assertion Failed: {0}", __VA_ARGS__); __debugbreak(); } }
#else
	#define GLCORE_ASSERT(x, ...)
#endif

#define BIT(x) (1 << x)

#define GLCORE_BIND_EVENT_FN(fn) std::bind(&fn, this, std::placeholders::_1)