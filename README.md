## Smiles

Smiles is an application that allows for humans to give smiles or take them away.

### Setup

To get set up with the smiles application, clone it
via `git` and pull in gem dependencies with `bundler`:

```sh
$ git clone https://github.com/ShannonPaige/smiles.git
$ cd smiles
$ bundle update
```

And set up the database:

```
bundle exec rake db:{create,migrate}
```

Tests can be run with:

```
be rspec
```

### Endpoints

The endpoints a user can hit are:

```
GET api/v1/humen
GET  /api/v1/humen/:id
POST /api/v1/humen?human[email]=email&&human[firstName]=firstName&&human[lastName]=lastName
POST /api/v1/transfers?transfer[human_id]=human_id&&transfer[smiles]=smiles
```

### Next Steps

The following steps have not been completed yet:
* There is no login for a user. Thus transfers can be made by anyone regardless of how many smiles they have.
* My next step would be to create a login for a user and then check their smiles when they made a transaction to verify it was a valid transfer.
* Add more tests - specifically in the models and sad paths
* Cast the objects to OpenStruct so that dot notation could be used
* Verify that a user's email was of email type
* Add user friendly messaging for failed transfers (and distinguish between a failure because a human wasn't found or because the giver is out of smiles)
* Switch transfer so that smiles can be given away based on email address or name instead of id
