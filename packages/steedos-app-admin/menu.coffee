
# Menu 支持两种类型的参数
# - template_name 指向 Meteor Template, url=/app/admin/_template/{template_name}/
# - object_name 指向对象, url=/app/admin/{object_name}/grid/all/
Creator.Menus =  [

    { _id: 'account', name: '我的账户', permission_sets: ["user"], expanded: false },
    # { _id: 'account_personal', name: '个人信息', permission_sets: ["user"], template_name: "account_personal", parent: 'account' },
    { _id: 'account_avatar', name: '头像', permission_sets: ["user"], template_name: "account_avatar", parent: 'account' },
    { _id: 'account_setting', name: '账户', permission_sets: ["user"], template_name: "account_setting", parent: 'account' },
    { _id: 'account_password', name: '密码', permission_sets: ["user"], template_name: "account_password", parent: 'account' },
    { _id: 'account_background', name: '背景图', permission_sets: ["user"], template_name: "account_background", parent: 'account' }

    { _id: 'menu_users', name: '用户管理', permission_sets: ["admin"], expanded: false },
    { _id: 'organizations', name: '部门', permission_sets: ["admin"], object_name: "organizations", parent: 'menu_users' },
    { _id: 'space_users', name: '用户', permission_sets: ["admin"], object_name: "space_users", parent: 'menu_users' },
    { _id: 'permission_set', name: '权限组', permission_sets: ["admin"], object_name: "permission_set", parent: 'menu_users' },

    # 单位管理员可以创建和设置流程及相关参数。
    { _id: 'menu_workflow', name: '流程管理', permission_sets: ["admin", "workflow_admin"], expanded: false },
    { _id: 'flows', name: '流程', permission_sets: ["admin", "workflow_admin"], object_name: "flows", parent: 'menu_workflow' },
    { _id: 'flow_roles', name: '审批岗位', permission_sets: ["admin", "workflow_admin"], object_name: "flow_roles", parent: 'menu_workflow' },
    { _id: 'flow_positions', name: '岗位成员', permission_sets: ["admin", "workflow_admin"], object_name: "flow_positions", parent: 'menu_workflow' },
    { _id: 'categories', name: '流程分类', permission_sets: ["admin", "workflow_admin"], object_name: "categories", parent: 'menu_workflow' },
    { _id: 'space_user_signs', name: '图片签名', permission_sets: ["admin", "workflow_admin"], object_name: "space_user_signs", parent: 'menu_workflow' },
    { _id: 'instances_statistic', name: '效率统计', permission_sets: ["admin", "workflow_admin"], object_name: "instances_statistic", parent: 'menu_workflow' },

    { _id: 'menu_objects', name: '应用与对象', permission_sets: ["admin"], expanded: false },
    { _id: 'apps', name: '应用', permission_sets: ["admin"], object_name: "apps", parent: 'menu_objects' },
    { _id: 'objects', name: '对象', permission_sets: ["admin"], object_name: "objects", parent: 'menu_objects' },
    { _id: 'permission_objects', name: '对象权限', permission_sets: ["admin"], object_name: "permission_objects", parent: 'menu_objects' },
    { _id: 'permission_shares', name: '共享规则', permission_sets: ["admin"], object_name: "permission_shares", parent: 'menu_objects' },
    { _id: 'object_workflows', name: '对象流程', permission_sets: ["admin"], object_name: "object_workflows", parent: 'menu_objects' },

    { _id: 'menu_development', name: '开发', permission_sets: ["admin"], expanded: false },
    { _id: 'application_package', name: '软件包', permission_sets: ["admin"], object_name: "application_package", parent: 'menu_development' },
    { _id: 'queue_import', name: '数据导入', permission_sets: ["admin"], object_name: "queue_import", parent: 'menu_development' },
    { _id: 'OAuth2Clients', name: 'OAuth2 应用', permission_sets: ["admin"], object_name: "OAuth2Clients", parent: 'menu_development' },
    { _id: 'OAuth2AccessTokens', name: 'OAuth2 Token', permission_sets: ["admin"], object_name: "OAuth2AccessTokens", parent: 'menu_development' },
    { _id: 'webhooks', name: 'Webhooks', permission_sets: ["admin"], object_name: "webhooks", parent: 'menu_development' },

];