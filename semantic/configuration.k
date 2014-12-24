require "../src/AADL.k"

module CONFIGURATION

	import AADL
	
	configuration

		<system multiplitcity="*">
			<appsoftware>
				<thread></thread>
				<threadgroup></threadgroup>
				<process></process>
				<data></data>
				<subprogram></subprogram>
			</appsoftware>
			<exehardware>
				<processor></processor>
				<memory></memory>
				<device></device>
			</exehardware>
		</system>