import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ridy/l10n/messages.dart';
import 'package:ridy/address/addresses.graphql.dart';

import 'package:client_shared/theme/theme.dart';
import 'package:ridy/schema.gql.dart';

class AddressItemView extends StatelessWidget {
  final Enum$RiderAddressType type;
  final Query$GetAddresses$riderAddresses? address;

  final Function(Query$GetAddresses$riderAddresses? address,
      Enum$RiderAddressType? type) onAction;

  const AddressItemView(
      {required this.onAction, required this.type, this.address, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          AddressListIcon(getAddressTypeIcon(type)),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  address?.title ?? getAddressTypeName(context, type),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                if (address != null)
                  Text(
                    address!.details,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                if (address == null)
                  CupertinoButton(
                      padding: const EdgeInsets.only(left: 0, top: 2),
                      minSize: 0,
                      child: Text(S.of(context).action_set_location,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium
                              ?.copyWith(color: CustomTheme.primaryColors)),
                      onPressed: () => onAction(null, type))
              ],
            ),
          ),
          const Spacer(),
          if (address != null)
            CupertinoButton(
                child: Text(
                  S.of(context).action_edit,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                onPressed: () => onAction(address, null))
        ],
      ),
    );
  }
}

class AddressListIcon extends StatelessWidget {
  final IconData iconData;
  const AddressListIcon(
    this.iconData, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: CustomTheme.neutralColors.shade200,
          borderRadius: BorderRadius.circular(10)),
      child: Icon(
        iconData,
        size: 28,
        color: CustomTheme.neutralColors.shade600,
      ),
    );
  }
}

IconData getAddressTypeIcon(Enum$RiderAddressType type) {
  switch (type) {
    case Enum$RiderAddressType.Home:
      return Ionicons.location;

    case Enum$RiderAddressType.Work:
      return Ionicons.business;

    case Enum$RiderAddressType.Partner:
      return Ionicons.heart;

    case Enum$RiderAddressType.Other:
      return Ionicons.location;

    case Enum$RiderAddressType.$unknown:
      return Ionicons.location;
    case Enum$RiderAddressType.Gym:
      return Ionicons.barbell;

    case Enum$RiderAddressType.Parent:
      return Ionicons.people;

    case Enum$RiderAddressType.Cafe:
      return Ionicons.cafe;

    case Enum$RiderAddressType.Park:
      return Ionicons.leaf;
  }
}

String getAddressTypeName(BuildContext context, Enum$RiderAddressType type) {
  switch (type) {
    case Enum$RiderAddressType.Home:
      return S.of(context).enum_address_type_home;

    case Enum$RiderAddressType.Work:
      return S.of(context).enum_address_type_work;

    case Enum$RiderAddressType.Partner:
      return S.of(context).enum_address_type_partner;

    case Enum$RiderAddressType.Other:
      return S.of(context).enum_address_type_other;

    case Enum$RiderAddressType.$unknown:
      return S.of(context).enum_address_type_other;

    case Enum$RiderAddressType.Gym:
      return S.of(context).enum_address_type_gym;

    case Enum$RiderAddressType.Parent:
      return S.of(context).enum_address_type_parent_house;

    case Enum$RiderAddressType.Cafe:
      return S.of(context).enum_address_type_cafe;

    case Enum$RiderAddressType.Park:
      return S.of(context).enum_address_type_park;
  }
}
