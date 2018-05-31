Creator.Objects.vip_store =
	name: "vip_store"
	label: "门店"
	icon: "apps"
	fields:
		name:
			label:'店名'
			type:'text'
		description:
			label:'简介'
			type:'text'
		location:
			label:'位置'
			type:'location'
			system: 'gcj02'
		contact:
			type:'lookup'
			reference_to:'users'
			label:'联系人'
		phone:
			type:'text'
			label:'联系电话'
		business_hours:
			type:'text'
			label:'营业时间'
		address:
			type:'text'
			label:'地址'
		merchant:
			type:'text'
			label:'所属商户'
			hidden:true
		images:
			label: '照片'
			type: 'image'
			multiple : true
		avatar:
			label:'头像'
			type:'image'
		cover:
			label:'封面照片'
			type:'image'
		post_types:
			label:'信息分类'
			type:'select'
			options:[
				{label:'公告通知',value:'announcements'},
				{label:'关于我们',value:'about'},
				{label:'新闻动态',value:'news'},
				{label:'会员指南',value:'help'},
				{label:'招兵买马',value:'jobs'},
				{label:'线上课程',value:'course'},
				# {label:'优惠券',value:'coupon'},
				# {label:'社区',value:'community'},
				# {label:'红包',value:'red_packet'}
			]
			multiple:true
		mch_id:
			type: 'text'
			label: '商户号'
			# required: true
	list_views:
		all:
			label: "所有门店"
			columns: ["name", "location", "phone","address","business_hours","merchant"]
			filter_scope: "space"
	triggers:
		"before.insert.server.store":
			on: "server"
			when: "before.insert"
			todo: (userId, doc)->
	permission_set:
		user:
			allowCreate: true
			allowDelete: true
			allowEdit: true
			allowRead: true
			modifyAllRecords: false
			viewAllRecords: true
		admin:
			allowCreate: true
			allowDelete: true
			allowEdit: true
			allowRead: true
			modifyAllRecords: true
			viewAllRecords: true