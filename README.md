<p align="center">
  <img src="https://img.shields.io/badge/NestJS-Framework-red" alt="NestJS"/>
  <img src="https://img.shields.io/badge/PostgreSQL-Database-blue" alt="PostgreSQL"/>
  <img src="https://img.shields.io/badge/Prisma-ORM-lightblue" alt="Prisma"/>
  <img src="https://img.shields.io/badge/Docker-Container-2496ED" alt="Docker"/>
  <img src="https://img.shields.io/badge/Status-Development-yellow" alt="Status"/>
</p>


# 🥋 Clube Feijão BJJ API

API para gestão da academia Clube Feijão de Jiu-Jitsu.  
Desenvolvido em NestJS com PostgreSQL, Prisma e Docker.

---

## 🚀 Tecnologias

- [NestJS](https://nestjs.com/) — Framework Node.js
- [PostgreSQL](https://www.postgresql.org/) — Banco de dados relacional
- [Prisma](https://www.prisma.io/) — ORM moderno e tipado
- [Docker](https://www.docker.com/) — Containers
- [Docker Compose](https://docs.docker.com/compose/) — Orquestração local de containers

---

## ⚙️ Project Setup

### 🔧 Instalação das dependências
```bash
npm install
```

---

## 🐳 Ambiente de Desenvolvimento (Recomendado)

### 🔥 Subir API + Banco
```bash
npm run docker:up
```

### 🛑 Derrubar ambiente
```bash
npm run docker:down
```

### 📜 Ver logs
```bash
npm run docker:logs
```

### 🐚 Acessar o container da API
```bash
npm run docker:exec
```

---

## 🎯 Scripts Prisma

### 🔄 Rodar migrations
```bash
npm run docker:prisma:migrate -- --name <migration-name>
```

### 🔥 Atualizar schema no banco (sem migrations)
```bash
npm run docker:prisma:db-push
```

### 🗺️ Abrir Prisma Studio
```bash
npm run docker:prisma:studio
```

### 🌱 Rodar seed
```bash
npm run docker:prisma:seed
```

### ⬇️ Fazer introspecção de um banco existente
```bash
npm run docker:prisma:db-pull
```

---

## 🏗️ Rodar o Projeto Local (sem docker)

### 🔥 Desenvolvimento (hot reload)
```bash
npm run start:dev
```

### 🚀 Produção local (build + start)
```bash
npm run build
npm run start:prod
```

---

## 🌐 Acesso à API
- API rodando em: [`http://localhost:3000`](http://localhost:3000)

---

## 🗄️ Banco de Dados
- Rodando em: `localhost:5432`
- Banco: `clube_feijao_db`
- Usuário: `postgres`
- Senha: `postgres`

---

## 📦 Estrutura do Projeto

```
/src
  /modules
    /student
    /responsible
/prisma
Dockerfile
docker-compose.yml
.env.example
```

---

## 🔥 Variáveis de Ambiente (.env)
```env
DATABASE_URL="postgresql://postgres:postgres@db:5432/clube_feijao_db?schema=public"
NODE_ENV=development
```

> ⚠️ Nunca commitar seu `.env`. Utilize o `.env.example` como referência.

---

## 🚀 Deploy
- O `Dockerfile` está configurado para produção (multi-stage build).
- Para produção, use o Dockerfile diretamente ou gere uma imagem e suba no Kubernetes, AWS, GCP, etc.

---

## 🏆 Boas Práticas

- ✅ Branch principal: `main`
- ✅ Branch de desenvolvimento: `dev`
- ✅ Push e PR sempre na `dev`
- ✅ PR da `dev` para `main` só após revisão

---

## 💻 Contribuindo

1. Faça um fork.
2. Crie uma branch: `git checkout -b feature/nome-da-feature`
3. Commit: `git commit -m 'feat: descrição'`
4. Push: `git push origin feature/nome-da-feature`
5. Abra um Pull Request na `dev`.

---

## 🔐 Licença

Este projeto é privado para uso interno do Clube Feijão BJJ.  
Licença privada. Todos os direitos reservados.

---