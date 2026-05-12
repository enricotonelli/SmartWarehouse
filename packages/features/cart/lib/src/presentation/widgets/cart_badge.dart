import 'package:cart/src/domain/entities/cart.dart';
import 'package:cart/src/presentation/bloc/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBadge extends StatelessWidget {
  const CartBadge({required this.cubit, required this.child, super.key});

  final CartCubit cubit;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, Cart>(
      bloc: cubit,
      builder: (context, cart) {
        if (cart.itemCount == 0) return child;
        return Stack(
          clipBehavior: Clip.none,
          children: [
            child,
            Positioned(
              top: -4,
              right: -4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 1.5),
                ),
                constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
                child: Text(
                  cart.itemCount > 99 ? '99+' : '${cart.itemCount}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
