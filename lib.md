# lib


## core

### error

- exceptions.dart

- failures.dart

### network

- network_info.dart

### strings

- failures.dart

- messages.dart

### util

- snackbar_message.dart

### widgets

- loading_widget.dart

### app_theme.dart

## features

### posts

- data

	- datasources

		- post_local_data_source.dart

		- post_remote_data_source.dart

	- models

		- post_model.dart

	- repositories

		- post_repository_impl.dart

- domain

	- entities

		- post.dart

	- repositories

		- posts_repository.dart

	- usecases

		- add_post.dart

		- delete_post.dart

		- get_all_posts.dart

		- update_pot.dart

- presentation

	- bloc

		- add_delete_update_post

			- add_delete_update_post_bloc.dart

			- add_delete_update_post_event.dart

			- add_delete_update_post_state.dart

		- posts

			- posts_bloc.dart

			- posts_event.dart

			- posts_state.dart

	- pages

		- post_add_update_page.dart

		- post_detail_page.dart

		- posts_page.dart

	- widgets

		- post_add_update_page

			- form_submit_btn.dart

			- form_widget.dart

			- text_form_field_widget.dart

		- post_detail_page

			- delete_dialog_widget.dart

			- delete_post_btn_widget.dart

			- post_detail_widget.dart

			- update_post_btn_widget.dart

		- posts_page

			- message_display_widget.dart

			- post_list_widget.dart

## injection_container.dart

## main.dart

