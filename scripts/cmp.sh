#!/bin/bash

name=$1
dir="${name}"

mkdir -p "${dir}"

cat << EOF > "${dir}/styles.module.css"
.container {
}
EOF

cat << EOF > "${dir}/index.tsx"
import { ReactElement } from 'react'
import css from './styles.module.css'

const ${name} = (): ReactElement => {
  return (
    <div className={css.container}>
    </div>
  )
}

export default ${name}
EOF