#pragma once

#include "Candle/Core/Base.h"
#include "Candle/Core/Timestep.h"
#include <Candle/Events/Event.h>

//TODO At macros to remove debug names
//TODO ADD eneble disable layers
namespace Candle
{
	class Layer
	{
	public:
		Layer(const std::string& name = "Layer");
		virtual ~Layer();

		virtual void OnAttach() {}
		virtual void OnDetach() {}
		virtual void OnUpdate(Timestep ts) {}
		virtual void OnImGuiRender() {}
		virtual void OnEvent(Event& event) {}

		inline const std::string& GetName() const { return m_DebugName; }

	protected:
		std::string m_DebugName;
	};
}

