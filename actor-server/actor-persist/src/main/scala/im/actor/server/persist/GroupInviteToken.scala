package im.actor.server.persist

import com.github.tototoshi.slick.PostgresJodaSupport._
import org.joda.time.DateTime
import slick.driver.PostgresDriver.api._

import im.actor.server.models

class GroupInviteTokenTable(tag: Tag) extends Table[models.GroupInviteToken](tag, "group_invite_tokens") {
  def groupId = column[Int]("group_id", O.PrimaryKey)
  def creatorId = column[Int]("creator_id", O.PrimaryKey)
  def token = column[String]("token", O.PrimaryKey)
  def revokedAt = column[Option[DateTime]]("revoked_at")

  def * = (groupId, creatorId, token, revokedAt) <> (models.GroupInviteToken.tupled, models.GroupInviteToken.unapply)
}

object GroupInviteToken {
  val groupInviteTokens = TableQuery[GroupInviteTokenTable]

  def create(token: models.GroupInviteToken) =
    groupInviteTokens += token

  val activeTokens = groupInviteTokens.filter(_.revokedAt.isEmpty)

  def find(groupId: Int, userId: Int) =
    activeTokens.filter(t ⇒ t.groupId === groupId && t.creatorId === userId).result

  def findByToken(token: String) =
    activeTokens.filter(_.token === token).result.headOption

  def revoke(groupId: Int, userId: Int) =
    activeTokens.filter(t ⇒ t.groupId === groupId && t.creatorId === userId).map(_.revokedAt).update(Some(DateTime.now))

}
