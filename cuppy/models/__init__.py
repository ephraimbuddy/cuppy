from sqlalchemy import engine_from_config
from sqlalchemy.orm import sessionmaker
from sqlalchemy.orm import configure_mappers
import zope.sqlalchemy

# import or define all models here to ensure they are attached to the
# Base.metadata prior to any initialization routines
from .content import Content, Tag, Document  # flake8: noqa
from .users import User, Groups, AuthUserLog, SiteActivity # flake8: noqa
from .meta import DBSession, Base
from .events import ObjectInsert, ObjectDelete, ObjectUpdate, UserInsert, UserDeleted, UserUpdate

from cuppy.utils.util import get_settings
# run configure_mappers after defining all of the models to ensure
# all relationships can be setup
configure_mappers()

