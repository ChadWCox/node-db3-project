// scheme-model
const db = require('../../data/db-config');

module.exports = {

    find() {
        return db('schemes')
    },
    findById (id) {
        return db('schemes').where('id', id).first()
    },
    findSteps(id){
        return db('steps as st')
        .join('schemes as sc', 'sc.id', 'st.scheme_id')
        .select('st.id', 'sc.scheme_name', 'st.step_number', 'st.instructions')
        .where('st.id', id)
    },
    add(scheme) {
        return db('schemes').insert(scheme)
        .then(([id]) => {
        return db('schemes').where('id', id).first()
        })
    },
    update(id, scheme) {
        return db('schemes').where('id', id).update(scheme)
      },
    remove(id){
        return db('schemes').where('id', id).del()
    }
}

