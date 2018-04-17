
    create table qsx_campaign (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        code varchar(255),
        endDate varchar(255),
        instruction varchar(255),
        name varchar(255),
        quantity varchar(255),
        product_id bigint,
        status_code varchar(255),
        type_code varchar(255),
        user_id bigint,
        primary key (id)
    );

    create table qsx_city (
        code varchar(255) not null,
        name varchar(255),
        province_code varchar(255),
        primary key (code)
    );

    create table qsx_contact (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        address varchar(11) not null,
        birthday varchar(11) not null,
        code varchar(255),
        description varchar(255),
        email varchar(255),
        gender varchar(11) not null,
        name varchar(100) not null,
        phone varchar(11) not null,
        position varchar(11) not null,
        customer_id bigint,
        resource_code varchar(255),
        user_id bigint,
        primary key (id)
    );

    create table qsx_customer (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        account varchar(255),
        address varchar(11) not null,
        company varchar(200) not null,
        description varchar(255),
        email varchar(255),
        isVIP bit not null,
        mobile varchar(255),
        name varchar(100) not null,
        payAddress varchar(255),
        receiveAddress varchar(255),
        city_code varchar(255),
        owner_id bigint,
        province_code varchar(255),
        region_id bigint,
        status_code varchar(255),
        primary key (id)
    );

    create table qsx_department (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        name varchar(100) not null,
        primary key (id)
    );

    create table qsx_department_role (
        departmentId bigint not null,
        roleId bigint not null,
        primary key (departmentId, roleId)
    );

    create table qsx_dictionary (
        CategoryCode varchar(31) not null,
        code varchar(255) not null,
        description varchar(255),
        indexNo integer not null,
        name varchar(255),
        primary key (code)
    );

    create table qsx_issue (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        code varchar(255),
        description TEXT not null,
        title varchar(100) not null,
        contact_id bigint,
        priority_code varchar(255),
        product_id bigint,
        status_code varchar(255),
        user_id bigint,
        primary key (id)
    );

    create table qsx_menu (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        icon varchar(100) not null,
        indexNo integer,
        name varchar(100) not null,
        url varchar(100) not null,
        parent_id bigint,
        primary key (id)
    );

    create table qsx_menu_resource (
        menuId bigint not null,
        resourceId bigint not null,
        primary key (menuId, resourceId)
    );

    create table qsx_operate_log (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        action varchar(255),
        context varchar(255),
        host varchar(255),
        memo longtext,
        name varchar(255),
        result varchar(10) not null,
        target varchar(255),
        timeConsume bigint,
        userCode varchar(60) not null,
        primary key (id)
    );

    create table qsx_opportunity (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        code varchar(255),
        description TEXT not null,
        endDate varchar(255),
        name varchar(255),
        probability integer,
        total decimal(19,2),
        campaign_id bigint,
        customer_id bigint,
        resource_code varchar(255),
        status_code varchar(255),
        user_id bigint,
        primary key (id)
    );

    create table qsx_problem (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        answer varchar(255),
        code varchar(255),
        problem varchar(255),
        product_id bigint,
        status_code varchar(255),
        primary key (id)
    );

    create table qsx_product (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        code varchar(255),
        description TEXT not null,
        inventory integer,
        name varchar(100) not null,
        picture varchar(255),
        price double precision,
        category_id bigint,
        status_code varchar(255),
        supplier_id bigint,
        primary key (id)
    );

    create table qsx_product_category (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        description varchar(255),
        name varchar(100) not null,
        primary key (id)
    );

    create table qsx_prospective (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        code varchar(255),
        company varchar(255),
        description TEXT not null,
        email varchar(255),
        mobile varchar(255),
        name varchar(255),
        position varchar(255),
        resource_code varchar(255),
        status_code varchar(255),
        user_id bigint,
        primary key (id)
    );

    create table qsx_province (
        code varchar(255) not null,
        name varchar(255),
        pinyin varchar(255),
        primary key (code)
    );

    create table qsx_purchase_order (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        code varchar(255),
        contactName varchar(255),
        contactPhone varchar(255),
        instruction TEXT not null,
        payAddress varchar(255),
        receiveAddress varchar(255),
        theme varchar(255),
        totalAmount double precision not null,
        totalQuantity integer not null,
        freight_code varchar(255),
        status_code varchar(255),
        supplier_id bigint,
        user_id bigint,
        primary key (id)
    );

    create table qsx_purchase_order_item (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        amount double precision,
        quantity integer,
        product_id bigint,
        purchaseOrder_id bigint,
        primary key (id)
    );

    create table qsx_quotation (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        code varchar(255),
        description varchar(255),
        invoiceAddress varchar(255),
        receiverAddress varchar(255),
        title varchar(255),
        totalAmount double precision not null,
        totalQuantity integer not null,
        contact_id bigint,
        customer_id bigint,
        freight_code varchar(255),
        opportunity_id bigint,
        status_code varchar(255),
        user_id bigint,
        primary key (id)
    );

    create table qsx_quotation_item (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        amount double precision,
        quantity integer,
        product_id bigint,
        quotation_id bigint,
        primary key (id)
    );

    create table qsx_region (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        name varchar(100) not null,
        primary key (id)
    );

    create table qsx_resource (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        name varchar(100) not null,
        url varchar(255),
        primary key (id)
    );

    create table qsx_role (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        name varchar(100) not null,
        primary key (id)
    );

    create table qsx_role_menu (
        roleId bigint not null,
        menuId bigint not null,
        primary key (roleId, menuId)
    );

    create table qsx_role_resource (
        roleId bigint not null,
        resourceId bigint not null,
        primary key (roleId, resourceId)
    );

    create table qsx_sales_order (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        code varchar(255),
        instruction TEXT not null,
        payAddress varchar(255),
        receiveAddress varchar(255),
        theme varchar(255),
        totalAmount double precision not null,
        totalQuantity integer not null,
        contact_id bigint,
        customer_id bigint,
        freight_code varchar(255),
        opportunity_id bigint,
        quotation_id bigint,
        status_code varchar(255),
        user_id bigint,
        primary key (id)
    );

    create table qsx_sales_order_item (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        amount double precision,
        quantity integer,
        product_id bigint,
        salesOrder_id bigint,
        primary key (id)
    );

    create table qsx_supplier (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        code varchar(255),
        email varchar(255),
        instruction varchar(255),
        mobile varchar(255),
        name varchar(255),
        primary key (id)
    );

    create table qsx_user (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        email varchar(100) not null,
        gender varchar(100) not null,
        loginName varchar(100) not null,
        name varchar(100) not null,
        password varchar(100) not null,
        phone varchar(100) not null,
        department_id bigint,
        status_code varchar(255),
        primary key (id)
    );

    create table qsx_user_role (
        userId bigint not null,
        roleId bigint not null,
        primary key (userId, roleId)
    );

    create table qsx_user_setting (
        id bigint not null auto_increment,
        createTime varchar(19),
        updateTime varchar(19),
        defaultLanguage varchar(100),
        defaultTheme varchar(100),
        fixedHeader bit,
        fixedNavigation bit,
        user_id bigint unique,
        primary key (id)
    );

    alter table qsx_campaign 
        add index FKC7A18499AA9E3019 (status_code), 
        add constraint FKC7A18499AA9E3019 
        foreign key (status_code) 
        references qsx_dictionary (code);

    alter table qsx_campaign 
        add index FKC7A18499B7261D30 (user_id), 
        add constraint FKC7A18499B7261D30 
        foreign key (user_id) 
        references qsx_user (id);

    alter table qsx_campaign 
        add index FKC7A18499C0441A02 (product_id), 
        add constraint FKC7A18499C0441A02 
        foreign key (product_id) 
        references qsx_product (id);

    alter table qsx_campaign 
        add index FKC7A1849945859C59 (type_code), 
        add constraint FKC7A1849945859C59 
        foreign key (type_code) 
        references qsx_dictionary (code);

    alter table qsx_city 
        add index FK700049747EA546F8 (province_code), 
        add constraint FK700049747EA546F8 
        foreign key (province_code) 
        references qsx_province (code);

    alter table qsx_contact 
        add index FKBB4B8B77A09E327 (resource_code), 
        add constraint FKBB4B8B77A09E327 
        foreign key (resource_code) 
        references qsx_dictionary (code);

    alter table qsx_contact 
        add index FKBB4B8B77B7261D30 (user_id), 
        add constraint FKBB4B8B77B7261D30 
        foreign key (user_id) 
        references qsx_user (id);

    alter table qsx_contact 
        add index FKBB4B8B778317728A (customer_id), 
        add constraint FKBB4B8B778317728A 
        foreign key (customer_id) 
        references qsx_customer (id);

    alter table qsx_customer 
        add index FKF41A036712D6D914 (status_code), 
        add constraint FKF41A036712D6D914 
        foreign key (status_code) 
        references qsx_dictionary (code);

    alter table qsx_customer 
        add index FKF41A0367230CCD48 (owner_id), 
        add constraint FKF41A0367230CCD48 
        foreign key (owner_id) 
        references qsx_user (id);

    alter table qsx_customer 
        add index FKF41A0367E0D5C71E (region_id), 
        add constraint FKF41A0367E0D5C71E 
        foreign key (region_id) 
        references qsx_region (id);

    alter table qsx_customer 
        add index FKF41A036727C7FDC2 (city_code), 
        add constraint FKF41A036727C7FDC2 
        foreign key (city_code) 
        references qsx_city (code);

    alter table qsx_customer 
        add index FKF41A03677EA546F8 (province_code), 
        add constraint FKF41A03677EA546F8 
        foreign key (province_code) 
        references qsx_province (code);

    alter table qsx_department_role 
        add index FKB6C0599A888D1567 (roleId), 
        add constraint FKB6C0599A888D1567 
        foreign key (roleId) 
        references qsx_role (id);

    alter table qsx_department_role 
        add index FKB6C0599AE27B29A7 (departmentId), 
        add constraint FKB6C0599AE27B29A7 
        foreign key (departmentId) 
        references qsx_department (id);

    alter table qsx_issue 
        add index FK9061F9F05C0C9088 (status_code), 
        add constraint FK9061F9F05C0C9088 
        foreign key (status_code) 
        references qsx_dictionary (code);

    alter table qsx_issue 
        add index FK9061F9F0B7261D30 (user_id), 
        add constraint FK9061F9F0B7261D30 
        foreign key (user_id) 
        references qsx_user (id);

    alter table qsx_issue 
        add index FK9061F9F0ADD620C8 (priority_code), 
        add constraint FK9061F9F0ADD620C8 
        foreign key (priority_code) 
        references qsx_dictionary (code);

    alter table qsx_issue 
        add index FK9061F9F0C0441A02 (product_id), 
        add constraint FK9061F9F0C0441A02 
        foreign key (product_id) 
        references qsx_product (id);

    alter table qsx_issue 
        add index FK9061F9F06FD028A0 (contact_id), 
        add constraint FK9061F9F06FD028A0 
        foreign key (contact_id) 
        references qsx_contact (id);

    alter table qsx_menu 
        add index FK7004C568CC1492DD (parent_id), 
        add constraint FK7004C568CC1492DD 
        foreign key (parent_id) 
        references qsx_menu (id);

    alter table qsx_menu_resource 
        add index FK76FC50556AAD4E7 (resourceId), 
        add constraint FK76FC50556AAD4E7 
        foreign key (resourceId) 
        references qsx_resource (id);

    alter table qsx_menu_resource 
        add index FK76FC505107128C7 (menuId), 
        add constraint FK76FC505107128C7 
        foreign key (menuId) 
        references qsx_menu (id);

    alter table qsx_opportunity 
        add index FK7BCDCAAACE886CC2 (status_code), 
        add constraint FK7BCDCAAACE886CC2 
        foreign key (status_code) 
        references qsx_dictionary (code);

    alter table qsx_opportunity 
        add index FK7BCDCAAAA09E327 (resource_code), 
        add constraint FK7BCDCAAAA09E327 
        foreign key (resource_code) 
        references qsx_dictionary (code);

    alter table qsx_opportunity 
        add index FK7BCDCAAAB7261D30 (user_id), 
        add constraint FK7BCDCAAAB7261D30 
        foreign key (user_id) 
        references qsx_user (id);

    alter table qsx_opportunity 
        add index FK7BCDCAAA8317728A (customer_id), 
        add constraint FK7BCDCAAA8317728A 
        foreign key (customer_id) 
        references qsx_customer (id);

    alter table qsx_opportunity 
        add index FK7BCDCAAA283E7A26 (campaign_id), 
        add constraint FK7BCDCAAA283E7A26 
        foreign key (campaign_id) 
        references qsx_campaign (id);

    alter table qsx_problem 
        add index FK702129F6B4FAB90E (status_code), 
        add constraint FK702129F6B4FAB90E 
        foreign key (status_code) 
        references qsx_dictionary (code);

    alter table qsx_problem 
        add index FK702129F6C0441A02 (product_id), 
        add constraint FK702129F6C0441A02 
        foreign key (product_id) 
        references qsx_product (id);

    alter table qsx_product 
        add index FK70223446767EC75E (status_code), 
        add constraint FK70223446767EC75E 
        foreign key (status_code) 
        references qsx_dictionary (code);

    alter table qsx_product 
        add index FK70223446DC57984A (category_id), 
        add constraint FK70223446DC57984A 
        foreign key (category_id) 
        references qsx_product_category (id);

    alter table qsx_product 
        add index FK70223446CB9514AE (supplier_id), 
        add constraint FK70223446CB9514AE 
        foreign key (supplier_id) 
        references qsx_supplier (id);

    alter table qsx_prospective 
        add index FK80258FA37F83DC67 (status_code), 
        add constraint FK80258FA37F83DC67 
        foreign key (status_code) 
        references qsx_dictionary (code);

    alter table qsx_prospective 
        add index FK80258FA3A09E327 (resource_code), 
        add constraint FK80258FA3A09E327 
        foreign key (resource_code) 
        references qsx_dictionary (code);

    alter table qsx_prospective 
        add index FK80258FA3B7261D30 (user_id), 
        add constraint FK80258FA3B7261D30 
        foreign key (user_id) 
        references qsx_user (id);

    alter table qsx_purchase_order 
        add index FK8725635982FD387C (status_code), 
        add constraint FK8725635982FD387C 
        foreign key (status_code) 
        references qsx_dictionary (code);

    alter table qsx_purchase_order 
        add index FK87256359B7261D30 (user_id), 
        add constraint FK87256359B7261D30 
        foreign key (user_id) 
        references qsx_user (id);

    alter table qsx_purchase_order 
        add index FK87256359CB9514AE (supplier_id), 
        add constraint FK87256359CB9514AE 
        foreign key (supplier_id) 
        references qsx_supplier (id);

    alter table qsx_purchase_order 
        add index FK872563598C56C66F (freight_code), 
        add constraint FK872563598C56C66F 
        foreign key (freight_code) 
        references qsx_dictionary (code);

    alter table qsx_purchase_order_item 
        add index FKB50C0039C0441A02 (product_id), 
        add constraint FKB50C0039C0441A02 
        foreign key (product_id) 
        references qsx_product (id);

    alter table qsx_purchase_order_item 
        add index FKB50C00395E31B666 (purchaseOrder_id), 
        add constraint FKB50C00395E31B666 
        foreign key (purchaseOrder_id) 
        references qsx_purchase_order (id);

    alter table qsx_quotation 
        add index FKD68983232B623BA (opportunity_id), 
        add constraint FKD68983232B623BA 
        foreign key (opportunity_id) 
        references qsx_opportunity (id);

    alter table qsx_quotation 
        add index FKD6898323DB51117B (status_code), 
        add constraint FKD6898323DB51117B 
        foreign key (status_code) 
        references qsx_dictionary (code);

    alter table qsx_quotation 
        add index FKD6898323B7261D30 (user_id), 
        add constraint FKD6898323B7261D30 
        foreign key (user_id) 
        references qsx_user (id);

    alter table qsx_quotation 
        add index FKD68983236FD028A0 (contact_id), 
        add constraint FKD68983236FD028A0 
        foreign key (contact_id) 
        references qsx_contact (id);

    alter table qsx_quotation 
        add index FKD68983238317728A (customer_id), 
        add constraint FKD68983238317728A 
        foreign key (customer_id) 
        references qsx_customer (id);

    alter table qsx_quotation 
        add index FKD68983238C56C66F (freight_code), 
        add constraint FKD68983238C56C66F 
        foreign key (freight_code) 
        references qsx_dictionary (code);

    alter table qsx_quotation_item 
        add index FKA3162EAF69902E88 (quotation_id), 
        add constraint FKA3162EAF69902E88 
        foreign key (quotation_id) 
        references qsx_quotation (id);

    alter table qsx_quotation_item 
        add index FKA3162EAFC0441A02 (product_id), 
        add constraint FKA3162EAFC0441A02 
        foreign key (product_id) 
        references qsx_product (id);

    alter table qsx_role_menu 
        add index FK431C151F888D1567 (roleId), 
        add constraint FK431C151F888D1567 
        foreign key (roleId) 
        references qsx_role (id);

    alter table qsx_role_menu 
        add index FK431C151F107128C7 (menuId), 
        add constraint FK431C151F107128C7 
        foreign key (menuId) 
        references qsx_menu (id);

    alter table qsx_role_resource 
        add index FK8E8EE3CE56AAD4E7 (resourceId), 
        add constraint FK8E8EE3CE56AAD4E7 
        foreign key (resourceId) 
        references qsx_resource (id);

    alter table qsx_role_resource 
        add index FK8E8EE3CE888D1567 (roleId), 
        add constraint FK8E8EE3CE888D1567 
        foreign key (roleId) 
        references qsx_role (id);

    alter table qsx_sales_order 
        add index FK2FF31E322B623BA (opportunity_id), 
        add constraint FK2FF31E322B623BA 
        foreign key (opportunity_id) 
        references qsx_opportunity (id);

    alter table qsx_sales_order 
        add index FK2FF31E32AEC34BEB (status_code), 
        add constraint FK2FF31E32AEC34BEB 
        foreign key (status_code) 
        references qsx_dictionary (code);

    alter table qsx_sales_order 
        add index FK2FF31E3269902E88 (quotation_id), 
        add constraint FK2FF31E3269902E88 
        foreign key (quotation_id) 
        references qsx_quotation (id);

    alter table qsx_sales_order 
        add index FK2FF31E32B7261D30 (user_id), 
        add constraint FK2FF31E32B7261D30 
        foreign key (user_id) 
        references qsx_user (id);

    alter table qsx_sales_order 
        add index FK2FF31E326FD028A0 (contact_id), 
        add constraint FK2FF31E326FD028A0 
        foreign key (contact_id) 
        references qsx_contact (id);

    alter table qsx_sales_order 
        add index FK2FF31E328317728A (customer_id), 
        add constraint FK2FF31E328317728A 
        foreign key (customer_id) 
        references qsx_customer (id);

    alter table qsx_sales_order 
        add index FK2FF31E328C56C66F (freight_code), 
        add constraint FK2FF31E328C56C66F 
        foreign key (freight_code) 
        references qsx_dictionary (code);

    alter table qsx_sales_order_item 
        add index FK5C0E2500C0441A02 (product_id), 
        add constraint FK5C0E2500C0441A02 
        foreign key (product_id) 
        references qsx_product (id);

    alter table qsx_sales_order_item 
        add index FK5C0E250044BA0222 (salesOrder_id), 
        add constraint FK5C0E250044BA0222 
        foreign key (salesOrder_id) 
        references qsx_sales_order (id);

    alter table qsx_user 
        add index FK70089BD412D6D914 (status_code), 
        add constraint FK70089BD412D6D914 
        foreign key (status_code) 
        references qsx_dictionary (code);

    alter table qsx_user 
        add index FK70089BD453BDFAE2 (department_id), 
        add constraint FK70089BD453BDFAE2 
        foreign key (department_id) 
        references qsx_department (id);

    alter table qsx_user_role 
        add index FK4353E201888D1567 (roleId), 
        add constraint FK4353E201888D1567 
        foreign key (roleId) 
        references qsx_role (id);

    alter table qsx_user_role 
        add index FK4353E2018E166147 (userId), 
        add constraint FK4353E2018E166147 
        foreign key (userId) 
        references qsx_user (id);

    alter table qsx_user_setting 
        add index FK22D83CE5B7261D30 (user_id), 
        add constraint FK22D83CE5B7261D30 
        foreign key (user_id) 
        references qsx_user (id);
